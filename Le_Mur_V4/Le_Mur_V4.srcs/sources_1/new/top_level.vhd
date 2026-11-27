library IEEE;
use IEEE.STD_LOGIC_1164.ALL;use IEEE.NUMERIC_STD.ALL;

entity top_level is
    generic (
        SCREEN_WIDTH          : positive := 1600;
        SCREEN_HEIGHT         : positive := 900;
        wall_height           : integer := 4;
        wall_width            : integer := 8;
        WALL_ONE_IS_OPENING   : boolean  := true;
        DEBUG_JOUEUR          : boolean  := false;
        MIN_PLAYER_PIXELS     : natural := 1000;
        MAX_COLLISION_PIXELS  : natural := 500;
        COUNT_BITS            : positive := 21;
        DARK_THRESH           : natural := 50;
        RED_MIN   : natural := 150;
                GREEN_MAX : natural := 100;
                BLUE_MAX  : natural := 100
    );
    Port ( pixel_clk : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           rgb_in : in STD_LOGIC_VECTOR (23 downto 0);
           vsync : in STD_LOGIC;
           vde : in STD_LOGIC;
           hsync : in STD_LOGIC;
           rgb_out : out STD_LOGIC_VECTOR (23 downto 0);
           run : in STD_LOGIC;
           quit : in STD_LOGIC;
           diff : in STD_LOGIC_VECTOR (1 downto 0);
           debug_detection             : in  std_logic;
           debug_compose             : in  std_logic);
end top_level;

architecture Behavioral of top_level is

component compositeur is
    generic (
        SCREEN_WIDTH        : positive := 1600;
        SCREEN_HEIGHT       : positive := 900;
        WALL_ONE_IS_OPENING : boolean  := true;
        DEBUG_JOUEUR        : boolean  := false
    );
    port (
        pixel_clk         : in  std_logic;
        reset             : in  std_logic;
        rgb_in            : in  std_logic_vector(23 downto 0);
        de_in             : in  std_logic;
        hsync_in          : in  std_logic;
        vsync_in          : in  std_logic;
        pixel_x           : in  std_logic_vector(11 downto 0);
        pixel_y           : in  std_logic_vector(11 downto 0);
        is_pixel_mur      : in  std_logic;
        is_pixel_joueur   : in  std_logic;
        mode_ui           : in  std_logic_vector(2 downto 0);
        score_courant     : in  std_logic_vector(3 downto 0);
        temps_restant     : in  std_logic_vector(3 downto 0);
        score_dernier     : in  std_logic_vector(3 downto 0);
        record_personnel  : in  std_logic_vector(3 downto 0);
        rgb_out           : out std_logic_vector(23 downto 0);
        debug             : in  std_logic
    );
end component;

component FSM is
    Port ( clk           : in  STD_LOGIC;
           reset         : in  STD_LOGIC;
           run           : in  STD_LOGIC;
           quit          : in  STD_LOGIC;
           diff_in       : in  STD_LOGIC_VECTOR (1 downto 0);
           q_pass        : in  STD_LOGIC;
           new_round     : out STD_LOGIC;
           diff_out      : out STD_LOGIC_VECTOR (1 downto 0);
           mode_ui       : out STD_LOGIC_VECTOR (2 downto 0);
           sec           : out STD_LOGIC_VECTOR (3 downto 0);
           score_courant : out STD_LOGIC_VECTOR (3 downto 0);
           record_perso  : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Generateur_mur is
    generic (
        wall_height   : integer := 4;
        wall_width    : integer := 8
    );
    Port (
        NewRandom : in STD_LOGIC;
        Mur_out   : out STD_LOGIC_VECTOR(wall_height * wall_width - 1 downto 0);
        Clk       : in STD_LOGIC
    );
end component;

component DSP is
    generic (
        MIN_PLAYER_PIXELS : natural := 1000;
        MAX_COLLISION_PIXELS : natural := 500;
        COUNT_BITS : positive := 21
    );
    port (
        clk_pixel : in STD_LOGIC;
        reset     : in STD_LOGIC;
        vde   : in STD_LOGIC;
        vsync : in STD_LOGIC;
        hsync : in STD_LOGIC;
        is_pixel_joueur : in STD_LOGIC;
        is_pixel_mur    : in STD_LOGIC;
        q_pass : out STD_LOGIC;
        player_present : out STD_LOGIC;
        result_valid : out STD_LOGIC;
        player_pixels : out STD_LOGIC_VECTOR(
            COUNT_BITS-1 downto 0
        );
        collision_pixels : out STD_LOGIC_VECTOR(
            COUNT_BITS-1 downto 0
        )
    );

end component;

component Pixel_counter is
    Port (
        clk_pixel  : in  STD_LOGIC;
        vsync      : in  STD_LOGIC;
        vde        : in  STD_LOGIC;
        pixel_x    : out STD_LOGIC_VECTOR (11 downto 0);
        pixel_y    : out STD_LOGIC_VECTOR (11 downto 0)
    );
end component;

component Presence_mur is
    Generic (
        wall_height   : integer := 4;
        wall_width    : integer := 8;
        screen_height : integer := 900;
        screen_width  : integer := 1600
    );
    Port (
        pixel_x   : in  STD_LOGIC_VECTOR (11 downto 0);
        pixel_y   : in  STD_LOGIC_VECTOR (11 downto 0);
        wall_mask : in  STD_LOGIC_VECTOR (wall_height * wall_width - 1 downto 0);
        is_mur    : out STD_LOGIC
    );
end component;

component detection_joueur is
    generic (
        -- Seuil moyen de luminosite pour le mode normal.
        DARK_THRESH : natural := 50;

        -- Seuils de detection pour le mode debug.
        RED_MIN   : natural := 150;
        GREEN_MAX : natural := 100;
        BLUE_MAX  : natural := 100
    );

    port (
        -- Pixel RGB sur 24 bits.
        rgb_in : in STD_LOGIC_VECTOR(23 downto 0);

        -- Choix du mode :
        -- 0 = Detection du noir
        -- 1 = Detection du rouge
        debug : in STD_LOGIC;

        -- Resultat de la detection.
        is_pixel_joueur : out STD_LOGIC
    );
end component;

-- Signaux internes
    signal pixel_x         : std_logic_vector(11 downto 0);
    signal pixel_y         : std_logic_vector(11 downto 0);
    signal wall_mask       : std_logic_vector(wall_height * wall_width - 1 downto 0);
    signal is_pixel_mur    : std_logic;
    signal is_pixel_joueur : std_logic;
    signal q_pass          : std_logic;
    signal new_round       : std_logic;

    signal mode_ui         : std_logic_vector(2 downto 0);
    signal sec             : std_logic_vector(3 downto 0);
    signal score_courant   : std_logic_vector(3 downto 0);
    signal score_dernier   : std_logic_vector(3 downto 0);
    signal record_perso    : std_logic_vector(3 downto 0);
    signal diff_out        : std_logic_vector(1 downto 0);

begin

    -- Le dernier score est le score courant quand la partie se termine
    score_dernier <= score_courant;

    u_pixel_counter : Pixel_counter
        port map (
            clk_pixel => pixel_clk,
            vsync     => vsync,
            vde       => vde,
            pixel_x   => pixel_x,
            pixel_y   => pixel_y
        );

    u_detection_joueur : detection_joueur
        generic map (
            DARK_THRESH => DARK_THRESH,
            RED_MIN => RED_MIN,
            GREEN_MAX => GREEN_MAX,
            BLUE_MAX  => BLUE_MAX
        )
        port map (
            rgb_in          => rgb_in,
            is_pixel_joueur => is_pixel_joueur,
            debug => debug_detection
        );

    u_generateur_mur : Generateur_mur
        generic map (
            wall_height => wall_height,
            wall_width  => wall_width
        )
        port map (
            Clk       => clk,
            NewRandom => new_round,
            Mur_out   => wall_mask
        );

    u_presence_mur : Presence_mur
        generic map (
            wall_height   => wall_height,
            wall_width    => wall_width,
            screen_height => SCREEN_HEIGHT,
            screen_width  => SCREEN_WIDTH
        )
        port map (
            pixel_x   => pixel_x,
            pixel_y   => pixel_y,
            wall_mask => wall_mask,
            is_mur    => is_pixel_mur
        );

    u_dsp : DSP
        generic map (
            MIN_PLAYER_PIXELS    => MIN_PLAYER_PIXELS,
            MAX_COLLISION_PIXELS => MAX_COLLISION_PIXELS,
            COUNT_BITS           => COUNT_BITS
        )
        port map (
            clk_pixel        => pixel_clk,
            reset            => reset,
            vde              => vde,
            vsync            => vsync,
            hsync            => hsync,
            is_pixel_joueur  => is_pixel_joueur,
            is_pixel_mur     => is_pixel_mur,
            q_pass           => q_pass,
            player_present   => open,
            result_valid     => open,
            player_pixels    => open,
            collision_pixels => open
        );

    u_fsm : FSM
        port map (
            clk           => clk,
            reset         => reset,
            run           => run,
            quit          => quit,
            diff_in       => diff,
            q_pass        => q_pass,
            new_round     => new_round,
            diff_out      => diff_out,
            mode_ui       => mode_ui,
            sec           => sec,
            score_courant => score_courant,
            record_perso  => record_perso
        );

    u_compositeur : compositeur
        generic map (
            SCREEN_WIDTH        => SCREEN_WIDTH,
            SCREEN_HEIGHT       => SCREEN_HEIGHT,
            WALL_ONE_IS_OPENING => WALL_ONE_IS_OPENING,
            DEBUG_JOUEUR        => DEBUG_JOUEUR
        )
        port map (
            pixel_clk        => pixel_clk,
            reset            => reset,
            rgb_in           => rgb_in,
            de_in            => vde,
            hsync_in         => hsync,
            vsync_in         => vsync,
            pixel_x          => pixel_x,
            pixel_y          => pixel_y,
            is_pixel_mur     => is_pixel_mur,
            is_pixel_joueur  => is_pixel_joueur,
            mode_ui          => mode_ui,
            score_courant    => score_courant,
            temps_restant    => sec,
            score_dernier    => score_dernier,
            record_personnel => record_perso,
            rgb_out          => rgb_out,
            debug            => debug_compose
        );

end Behavioral;