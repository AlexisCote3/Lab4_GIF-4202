library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is
    generic (
        -- Frequence de l'horloge connectee a FSM/clk.
        -- Pour la Zybo Z7-20 avec horloge 125 MHz :
        CLK_FREQ_HZ : positive := 125000000
    );
    port (
        clk              : in  STD_LOGIC;
        reset            : in  STD_LOGIC;
        run              : in  STD_LOGIC; -- impulsion/bouton Start ou Reprise
        pause            : in  STD_LOGIC; -- impulsion/bouton Pause
        quit             : in  STD_LOGIC;
        difficulty       : in  STD_LOGIC_VECTOR(1 downto 0);
        q_pass           : in  STD_LOGIC; -- resultat DSP, valide a la fin du temps

        new_round        : out STD_LOGIC;
        diff_out         : out STD_LOGIC_VECTOR(1 downto 0);
        mode_ui          : out STD_LOGIC_VECTOR(2 downto 0);
        sec              : out STD_LOGIC_VECTOR(3 downto 0);
        decompte_ui      : out STD_LOGIC_VECTOR(3 downto 0);
        flash_on         : out STD_LOGIC;
        score_courant    : out STD_LOGIC_VECTOR(3 downto 0);
        score_dernier    : out STD_LOGIC_VECTOR(3 downto 0);
        record_perso     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end FSM;

architecture Behavioral of FSM is
    signal diff_sig          : STD_LOGIC_VECTOR(1 downto 0);
    signal sec_jeu_sig       : STD_LOGIC_VECTOR(3 downto 0);
    signal sec_phase_sig     : STD_LOGIC_VECTOR(3 downto 0);
    signal limite_jeu_sig    : STD_LOGIC_VECTOR(3 downto 0);
    signal limite_phase_sig  : STD_LOGIC_VECTOR(3 downto 0);
    signal flash_phase_sig   : STD_LOGIC;

    signal charge_jeu_sig    : STD_LOGIC;
    signal actif_jeu_sig     : STD_LOGIC;
    signal charge_phase_sig  : STD_LOGIC;
    signal actif_phase_sig   : STD_LOGIC;
    signal inc_score_sig     : STD_LOGIC;
    signal reset_score_sig   : STD_LOGIC;
    signal save_score_sig    : STD_LOGIC;
    signal new_round_sig     : STD_LOGIC;
    signal reset_jeu_sig     : STD_LOGIC;
    signal reset_phase_sig   : STD_LOGIC;
begin
    -- Difficulte : duree maximale d'un mur.
    with diff_sig select
        limite_jeu_sig <= "1010" when "00",  -- 10 secondes
                          "0111" when "01",  --  7 secondes
                          "0101" when "10",  --  5 secondes
                          "0011" when others;--  3 secondes

    -- Le reset global recharge les compteurs; les impulsions charge_*
    -- rechargent chaque compteur independamment.
    reset_jeu_sig   <= reset or charge_jeu_sig;
    reset_phase_sig <= reset or charge_phase_sig;

    u_game_state : entity work.game_state
        port map (
            clk              => clk,
            reset            => reset,
            run              => run,
            pause            => pause,
            quit             => quit,
            difficulty       => difficulty,
            sec              => sec_jeu_sig,
            phase_sec        => sec_phase_sig,
            phase_flash      => flash_phase_sig,
            q_pass           => q_pass,
            charge_jeu       => charge_jeu_sig,
            actif_jeu        => actif_jeu_sig,
            charge_phase     => charge_phase_sig,
            actif_phase      => actif_phase_sig,
            limite_phase     => limite_phase_sig,
            inc_score        => inc_score_sig,
            reset_score      => reset_score_sig,
            save_score       => save_score_sig,
            new_round        => new_round_sig,
            diff_out         => diff_sig,
            mode_ui          => mode_ui,
            decompte_ui      => decompte_ui,
            flash_on         => flash_on
        );

    u_score : entity work.score
        port map (
            clk            => clk,
            reset          => reset,
            stop           => reset_score_sig,
            inc            => inc_score_sig,
            fin_partie     => save_score_sig,
            score_courant  => score_courant,
            score_dernier  => score_dernier,
            record_perso   => record_perso
        );

    -- Compteur du mur : conserve le temps restant pendant PAUSE et DECOMPTE.
    u_sec_jeu : entity work.sec_counter
        generic map (CLK_FREQ_HZ => CLK_FREQ_HZ)
        port map (
            clk        => clk,
            reset      => reset_jeu_sig,
            enable     => actif_jeu_sig,
            time_limit => limite_jeu_sig,
            sec        => sec_jeu_sig,
            flash_on   => open
        );

    -- Compteur des phases (3,2,1, GO et flash resultat).
    u_sec_phase : entity work.sec_counter
        generic map (CLK_FREQ_HZ => CLK_FREQ_HZ)
        port map (
            clk        => clk,
            reset      => reset_phase_sig,
            enable     => actif_phase_sig,
            time_limit => limite_phase_sig,
            sec        => sec_phase_sig,
            flash_on   => flash_phase_sig
        );

    new_round <= new_round_sig;
    diff_out  <= diff_sig;
    sec       <= sec_jeu_sig;
end Behavioral;
