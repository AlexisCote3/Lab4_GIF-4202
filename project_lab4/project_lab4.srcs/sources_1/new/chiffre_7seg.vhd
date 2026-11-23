-- Projet Le Mur - affichage d'un chiffre decimal en 7 segments
-- Module combinatoire : aucun retard de pipeline.
-- Les coordonnees et l'origine sont exprimees en pixels actifs.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity chiffre_7seg is
    generic (
        X_ORIGIN : natural := 0;
        Y_ORIGIN : natural := 0;
        SCALE    : positive := 2
    );
    port (
        x        : in  std_logic_vector(11 downto 0);
        y        : in  std_logic_vector(11 downto 0);
        chiffre  : in  std_logic_vector(3 downto 0); -- BCD 0 a 9
        pixel_on : out std_logic
    );
end chiffre_7seg;

architecture RTL of chiffre_7seg is
    -- Ordre des bits : a b c d e f g
    signal segments : std_logic_vector(6 downto 0);
    signal local_x : integer;
    signal local_y : integer;
begin
    local_x <= to_integer(unsigned(x)) - X_ORIGIN;
    local_y <= to_integer(unsigned(y)) - Y_ORIGIN;
    with chiffre select
        segments <= "1111110" when "0000", -- 0
                    "0110000" when "0001", -- 1
                    "1101101" when "0010", -- 2
                    "1111001" when "0011", -- 3
                    "0110011" when "0100", -- 4
                    "1011011" when "0101", -- 5
                    "1011111" when "0110", -- 6
                    "1110000" when "0111", -- 7
                    "1111111" when "1000", -- 8
                    "1111011" when "1001", -- 9
                    "0000000" when others;

    process (local_x, local_y, segments)
    begin
        pixel_on <= '0';

        -- Matrice de 12*SCALE par 20*SCALE pixels
        if local_x >= 0 and local_x < 12*SCALE and
           local_y >= 0 and local_y < 20*SCALE then
            if (segments(6) = '1' and local_x >= 2*SCALE and local_x < 10*SCALE and local_y < 2*SCALE) or -- a
               (segments(5) = '1' and local_x >= 10*SCALE and local_y >= 2*SCALE and local_y < 10*SCALE) or -- b
               (segments(4) = '1' and local_x >= 10*SCALE and local_y >= 10*SCALE and local_y < 18*SCALE) or -- c
               (segments(3) = '1' and local_x >= 2*SCALE and local_x < 10*SCALE and local_y >= 18*SCALE) or -- d
               (segments(2) = '1' and local_x < 2*SCALE and local_y >= 10*SCALE and local_y < 18*SCALE) or -- e
               (segments(1) = '1' and local_x < 2*SCALE and local_y >= 2*SCALE and local_y < 10*SCALE) or -- f
               (segments(0) = '1' and local_x >= 2*SCALE and local_x < 10*SCALE and local_y >= 9*SCALE and local_y < 11*SCALE) then -- g
                pixel_on <= '1';
            end if;
        end if;
    end process;
end RTL;
