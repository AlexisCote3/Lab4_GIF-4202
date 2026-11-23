library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Pixel_counter is
    Port (
        clk_pixel  : in  STD_LOGIC;
        vsync      : in  STD_LOGIC;  -- actif à '1' (inverser si ton flux est actif bas)
        vde        : in  STD_LOGIC;  -- '1' quand le pixel courant est dans la zone active
        pixel_x    : out STD_LOGIC_VECTOR (11 downto 0);
        pixel_y    : out STD_LOGIC_VECTOR (11 downto 0)
    );
end Pixel_counter;

architecture Behavioral of Pixel_counter is
    signal x_cnt    : unsigned (11 downto 0) := (others => '0');
    signal y_cnt    : unsigned (11 downto 0) := (others => '0');
    signal vde_prev : STD_LOGIC := '0';
begin

    process (clk_pixel)
    begin
        if rising_edge(clk_pixel) then
            vde_prev <= vde;

            -- x : remis à 0 pendant le blanking, il vaut donc 0 sur le premier pixel actif
            if vde = '1' then
                x_cnt <= x_cnt + 1;
            else
                x_cnt <= (others => '0');
            end if;

            -- y : +1 à chaque fin de ligne (front descendant de vde), remis à 0 par vsync
            if vsync = '1' then
                y_cnt <= (others => '0');
            elsif vde_prev = '1' and vde = '0' then
                y_cnt <= y_cnt + 1;
            end if;
        end if;
    end process;

    pixel_x <= std_logic_vector(x_cnt);
    pixel_y <= std_logic_vector(y_cnt);

end Behavioral;