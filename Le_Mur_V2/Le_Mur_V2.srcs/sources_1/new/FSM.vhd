library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is
    Port ( clk           : in  STD_LOGIC;
           reset         : in  STD_LOGIC;
           run         : in  STD_LOGIC;
           quit          : in  STD_LOGIC;
           difficulty    : in  STD_LOGIC_VECTOR (1 downto 0);
           q_pass        : in  STD_LOGIC;
           new_round     : out STD_LOGIC;
           diff_out      : out STD_LOGIC_VECTOR (1 downto 0);
           mode_ui       : out STD_LOGIC_VECTOR (2 downto 0);
           sec           : out STD_LOGIC_VECTOR (3 downto 0);
           score_courant : out STD_LOGIC_VECTOR (3 downto 0);
           record_perso  : out STD_LOGIC_VECTOR (3 downto 0));
end FSM;

architecture Behavioral of FSM is

component game_state is
    Port ( clk         : in  STD_LOGIC;
           reset       : in  STD_LOGIC;
           run         : in  STD_LOGIC;
           quit        : in  STD_LOGIC;
           difficulty  : in  STD_LOGIC_VECTOR (1 downto 0);
           sec         : in  STD_LOGIC_VECTOR (3 downto 0);
           q_pass      : in  STD_LOGIC;
           new_round   : out STD_LOGIC;
           play_enable : out STD_LOGIC;
           inc_score   : out STD_LOGIC;
           reset_score : out STD_LOGIC;
           diff_out    : out STD_LOGIC_VECTOR (1 downto 0);
           mode_ui     : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component score is
    Port ( clk           : in  STD_LOGIC;
           reset         : in  STD_LOGIC;
           stop          : in  STD_LOGIC;
           inc           : in  STD_LOGIC;
           score_courant : out STD_LOGIC_VECTOR (3 downto 0);
           record_perso  : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component sec_counter is
    Port ( clk        : in  STD_LOGIC;
           reset      : in  STD_LOGIC;
           enable     : in  STD_LOGIC;
           time_limit : in  STD_LOGIC_VECTOR (3 downto 0);
           sec        : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal new_round_sig   : STD_LOGIC;
signal play_enable_sig : STD_LOGIC;
signal inc_score_sig   : STD_LOGIC;
signal reset_score_sig : STD_LOGIC;
signal diff_sig        : STD_LOGIC_VECTOR (1 downto 0);
signal sec_sig         : STD_LOGIC_VECTOR (3 downto 0);
signal time_limit_sig  : STD_LOGIC_VECTOR (3 downto 0);

begin

-- difficult  -> temps par mur (valeurs   adapter)
with diff_sig select
    time_limit_sig <= "1010" when "00",    -- 10 s
                      "0111" when "01",    --  7 s
                      "0101" when "10",    --  5 s
                      "0011" when others;  --  3 s

u_game_state : game_state
    port map ( clk         => clk,
               reset       => reset,
               run         => run,
               quit        => quit,
               difficulty  =>  "11",
               sec         => sec_sig,
               q_pass      => q_pass,
               new_round   => new_round_sig,
               play_enable => play_enable_sig,
               inc_score   => inc_score_sig,
               reset_score => reset_score_sig,
               diff_out    => diff_sig,
               mode_ui     => mode_ui );

u_score : score
    port map ( clk           => clk,
               reset         => reset,
               stop          => reset_score_sig,
               inc           => inc_score_sig,
               score_courant => score_courant,
               record_perso  => record_perso );

u_sec_counter : sec_counter
    port map ( clk        => clk,
               reset      => new_round_sig,
               enable     => play_enable_sig,
               time_limit => time_limit_sig,
               sec        => sec_sig );

new_round   <= new_round_sig;
diff_out    <= diff_sig;
sec         <= sec_sig;

end Behavioral;