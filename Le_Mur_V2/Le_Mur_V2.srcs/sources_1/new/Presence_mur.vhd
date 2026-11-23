library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Presence_mur is
    Generic (
        wall_height   : integer := 4;
        wall_width    : integer := 8;
        screen_height : integer := 900;
        screen_width  : integer := 1600
    );
    Port (
        pixel_x   : in  STD_LOGIC_VECTOR (10 downto 0);
        pixel_y   : in  STD_LOGIC_VECTOR (10 downto 0);
        wall_mask : in  STD_LOGIC_VECTOR (wall_height * wall_width - 1 downto 0);
        is_mur    : out STD_LOGIC
    );
end Presence_mur;

architecture Behavioral of Presence_mur is
    constant cell_w : integer := screen_width  / wall_width;    -- 200
    constant cell_h : integer := screen_height / wall_height;   -- 225

    signal x_int : integer range 0 to 4095;
    signal y_int : integer range 0 to 4095;
    signal col   : integer range 0 to wall_width  - 1;
    signal row   : integer range 0 to wall_height - 1;
begin

    x_int <= to_integer(unsigned(pixel_x));
    y_int <= to_integer(unsigned(pixel_y));

    -- Saturation : hors zone active, y peut atteindre screen_height
    -- (le compteur s'incremente apres la derniere ligne, avant vsync).
    -- Sans saturation, row = 4 et l'index sortirait du vecteur.
    col <= x_int / cell_w when x_int < screen_width  else wall_width  - 1;
    row <= y_int / cell_h when y_int < screen_height else wall_height - 1;

    -- Haut-gauche = bit 31, bas-droite = bit 0
    is_mur <= wall_mask(wall_height * wall_width - 1 - (row * wall_width + col));

end Behavioral;