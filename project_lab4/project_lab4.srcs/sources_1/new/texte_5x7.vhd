-- Projet Le Mur - Generateur de textes de type matrice 5x7.
-- Texte constant fixe a la synthese. Aucune BRAM, aucun framebuffer.
-- Source de 7 lignes * 5 colonnes, agrandies par SCALE.
-- Aucun process avec variable ou fonction utilisateur.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity texte_5x7 is
    generic (
        TEXT     : string  := "START";
        X_ORIGIN : natural := 0;
        Y_ORIGIN : natural := 0;
        SCALE    : positive := 2
    );
    port (
        x        : in  std_logic_vector(11 downto 0);
        y        : in  std_logic_vector(11 downto 0);
        pixel_on : out std_logic
    );
end texte_5x7;

architecture RTL of texte_5x7 is
    signal rx, ry     : integer;
    signal char_num   : integer;
    signal glyph_col  : integer;
    signal glyph_row  : integer;
    signal current_ch : character;
    signal glyph_bits : std_logic_vector(34 downto 0);
begin
    rx <= to_integer(unsigned(x)) - X_ORIGIN;
    ry <= to_integer(unsigned(y)) - Y_ORIGIN;
    char_num  <= rx / (6*SCALE);
    glyph_col <= (rx mod (6*SCALE)) / SCALE;
    glyph_row <= ry / SCALE;

    process (char_num)
    begin
        current_ch <= ' ';
        if char_num >= 0 and char_num < TEXT'length then
            current_ch <= TEXT(TEXT'low + char_num);
        end if;
    end process;

    process (current_ch)
    begin
        case current_ch is
            when 'A' => glyph_bits <=
                "01110" &
                "10001" &
                "10001" &
                "11111" &
                "10001" &
                "10001" &
                "10001";
            when 'C' => glyph_bits <=
                "01111" &
                "10000" &
                "10000" &
                "10000" &
                "10000" &
                "10000" &
                "01111";
            when 'D' => glyph_bits <=
                "11110" &
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "11110";
            when 'E' => glyph_bits <=
                "11111" &
                "10000" &
                "10000" &
                "11110" &
                "10000" &
                "10000" &
                "11111";
            when 'F' => glyph_bits <=
                "11111" &
                "10000" &
                "10000" &
                "11110" &
                "10000" &
                "10000" &
                "10000";
            when 'I' => glyph_bits <=
                "11111" &
                "00100" &
                "00100" &
                "00100" &
                "00100" &
                "00100" &
                "11111";
            when 'L' => glyph_bits <=
                "10000" &
                "10000" &
                "10000" &
                "10000" &
                "10000" &
                "10000" &
                "11111";
            when 'M' => glyph_bits <=
                "10001" &
                "11011" &
                "10101" &
                "10101" &
                "10001" &
                "10001" &
                "10001";
            when 'N' => glyph_bits <=
                "10001" &
                "11001" &
                "10101" &
                "10011" &
                "10001" &
                "10001" &
                "10001";
            when 'O' => glyph_bits <=
                "01110" &
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "01110";
            when 'P' => glyph_bits <=
                "11110" &
                "10001" &
                "10001" &
                "11110" &
                "10000" &
                "10000" &
                "10000";
            when 'R' => glyph_bits <=
                "11110" &
                "10001" &
                "10001" &
                "11110" &
                "10100" &
                "10010" &
                "10001";
            when 'S' => glyph_bits <=
                "01111" &
                "10000" &
                "10000" &
                "01110" &
                "00001" &
                "00001" &
                "11110";
            when 'T' => glyph_bits <=
                "11111" &
                "00100" &
                "00100" &
                "00100" &
                "00100" &
                "00100" &
                "00100";
            when 'U' => glyph_bits <=
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "01110";
            when 'V' => glyph_bits <=
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "10001" &
                "01010" &
                "00100";
            when others => glyph_bits <= (others => '0');
        end case;
    end process;

    process (rx, ry, char_num, glyph_col, glyph_row, glyph_bits)
    begin
        pixel_on <= '0';
        if rx >= 0 and rx < TEXT'length * 6 * SCALE and
           ry >= 0 and ry < 7 * SCALE and
           char_num >= 0 and char_num < TEXT'length and
           glyph_col >= 0 and glyph_col < 5 and
           glyph_row >= 0 and glyph_row < 7 then
            pixel_on <= glyph_bits(34 - glyph_row*5 - glyph_col);
        end if;
    end process;
end RTL;
