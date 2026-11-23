library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity game_state is
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
end game_state;

architecture Behavioral of game_state is

type etat is (MENU, PLAY_START, ROUND_INIT, PLAY, GAME_OVER, PAUSE_STATE, WALL_PASSED);
signal etat_courant : etat;

signal diff : STD_LOGIC_VECTOR (1 downto 0);

begin

diff_out <= diff;

process (clk, reset, etat_courant, run, quit)
begin
    if reset = '1' then
        
        mode_ui <= "111";
        new_round   <= '0';
        play_enable <= '0';
        inc_score   <= '0';
        reset_score <= '0';
        diff <= "00";
        
        etat_courant <= MENU;
        
    elsif rising_edge(clk) then

        case etat_courant is

            when MENU =>
            
                mode_ui <= "000";
                new_round   <= '0';
                play_enable <= '0';
                inc_score   <= '0';
                reset_score <= '0';
            
                if run = '1' then
                    etat_courant <= PLAY_START;
                end if;
                
            when PLAY_START =>
                            
                mode_ui <= "001";
                new_round   <= '1';
                play_enable <= '1';
                inc_score   <= '0';
                reset_score <= '1';
                diff <= difficulty;
            
                etat_courant <= ROUND_INIT;
                
            when ROUND_INIT =>
            
                    mode_ui     <= "010";
                    new_round   <= '0';
                    play_enable <= '1';
                    inc_score   <= '0';
                    reset_score <= '0';
                
                    etat_courant <= PLAY;

            when PLAY =>
            
                mode_ui <= "010";
                new_round   <= '0';
                play_enable <= '1';
                inc_score   <= '0';
                reset_score <= '0';
            
                if run = '0' then
                    etat_courant <= PAUSE_STATE;
                elsif sec = "0000" and q_pass = '1' then
                    etat_courant <= WALL_PASSED;
                elsif sec = "0000" then
                    etat_courant <= GAME_OVER;
                end if;
            
            when WALL_PASSED =>
                            
                mode_ui <= "011";
                new_round   <= '1';
                play_enable <= '0';
                inc_score   <= '1';
                reset_score <= '0';
            
                etat_courant <= ROUND_INIT;           

            when GAME_OVER =>
            
                mode_ui <= "100";
                new_round   <= '0';
                play_enable <= '0';
                inc_score   <= '0';
                reset_score <= '0';
            
                if quit = '1' then
                    etat_courant <= MENU;
                end if;

            when PAUSE_STATE =>
                
                mode_ui <= "110";
                new_round   <= '0';
                play_enable <= '0';
                inc_score   <= '0';
                reset_score <= '0';
                    
                if quit = '1' then
                    etat_courant <= MENU;
                elsif run = '1' then
                    etat_courant <= PLAY;
                end if;
             
             when others =>
                
                etat_courant <= MENU;

        end case;
     end if;
end process;

end Behavioral;