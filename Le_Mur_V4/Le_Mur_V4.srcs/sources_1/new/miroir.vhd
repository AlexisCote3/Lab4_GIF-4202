library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity miroir is
    generic (LINE_WIDTH : natural := 1600;   -- pixels actifs par ligne
             LINE_TOTAL : natural := 1800);  -- cycles PixelClk par ligne (blanking inclus)
    Port (PixelClk  : in  STD_LOGIC;
          VSync_in  : in  STD_LOGIC;
          VDE_in    : in  STD_LOGIC;
          HSync_in  : in  STD_LOGIC;
          VSync_out : out STD_LOGIC;
          VDE_out   : out STD_LOGIC;
          HSync_out : out STD_LOGIC;
          address   : out STD_LOGIC_VECTOR(10 downto 0);
          wea       : out STD_LOGIC_VECTOR(0 downto 0)
    );
end miroir;

architecture Behavioral of miroir is
    type line_delay_t is array (0 to LINE_TOTAL - 1) of STD_LOGIC_VECTOR(1 downto 0);
    signal line_delay : line_delay_t := (others => "00");  -- (VDE, VSync) retard?s d'une ligne

    signal vde_line   : STD_LOGIC;                          -- VDE_in retard? de LINE_TOTAL cycles
    signal vsync_line : STD_LOGIC;                          -- VSync_in retard? de LINE_TOTAL cycles
    signal win        : STD_LOGIC;                          -- fen?tre lecture OU ?criture
    signal win_d      : STD_LOGIC := '0';
    signal cnt        : unsigned(10 downto 0) := (others => '0');
    signal reversed   : STD_LOGIC := '0';
begin

    vde_line   <= line_delay(LINE_TOTAL - 1)(1);
    vsync_line <= line_delay(LINE_TOTAL - 1)(0);
    win        <= VDE_in or vde_line;

    process(PixelClk)
    begin
        if rising_edge(PixelClk) then
            -- Retard d'une ligne exactement
            line_delay(0) <= VDE_in & VSync_in;
            line_delay(1 to LINE_TOTAL - 1) <= line_delay(0 to LINE_TOTAL - 2);

            -- Index du pixel dans la fen?tre (0 pendant le blanking horizontal)
            if win = '1' then
                cnt <= cnt + 1;
            else
                cnt <= (others => '0');
            end if;

            -- Changement de sens ? chaque fin de fen?tre
            win_d <= win;
            if win_d = '1' and win = '0' then
                reversed <= not reversed;
            end if;

            -- Sorties synchronis?es avec douta (1 cycle de latence BRAM)
            VDE_out   <= vde_line;
            VSync_out <= vsync_line;
            HSync_out <= HSync_in;   -- p?riodique : retard d'un cycle suffit
        end if;
    end process;

    address <= std_logic_vector(cnt) when reversed = '0'
               else std_logic_vector(to_unsigned(LINE_WIDTH - 1, 11) - cnt);

    wea(0) <= VDE_in;   -- on n'ecrit que les pixels r?ellement re?us

end Behavioral;