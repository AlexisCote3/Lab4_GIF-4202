--------------------------------------------------------------------------------
-- Projet LE MUR - Generateur de texte 5x7 optimise (Vivado 2018.2)
-- Remplace texte_5x7.vhd sans changer le Block Design ni Compositeur.vhd.
-- Entierement combinatoire. Aucun registre, RAM, division, modulo,
-- calcul d'indice variable, fonction utilisateur ou variable dans un process.
-- Le caractere TEXT est constant a l'elaboration : pas de multiplexeur
-- dynamique entre les glyphes dans le circuit final.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity texte_5x7 is
    generic (
        TEXT     : string   := "START";
        X_ORIGIN : natural  := 0;
        Y_ORIGIN : natural  := 0;
        SCALE    : positive := 2
    );
    port (
        x        : in  std_logic_vector(11 downto 0);
        y        : in  std_logic_vector(11 downto 0);
        pixel_on : out std_logic
    );
end texte_5x7;

architecture RTL of texte_5x7 is
    type glyph_array_t is array (natural range <>) of std_logic_vector(34 downto 0);

    signal x_pos      : integer range 0 to 4095;
    signal y_pos      : integer range 0 to 4095;
    signal active_row : std_logic_vector(6 downto 0);

    -- Chaque caractere possede SA constante de 35 bits.
    signal glyph      : glyph_array_t(0 to TEXT'length - 1);
    signal active_col : std_logic_vector(TEXT'length * 5 - 1 downto 0);
    signal lit_row    : std_logic_vector(TEXT'length * 7 - 1 downto 0);
    signal lit_char   : std_logic_vector(TEXT'length - 1 downto 0);
begin
    -- Uniquement des conversions; aucun calcul par pixel.
    x_pos <= to_integer(unsigned(x));
    y_pos <= to_integer(unsigned(y));

    -- Les memes 7 comparateurs de lignes servent a TOUS les caracteres.
    GEN_Y : for r in 0 to 6 generate
        active_row(r) <= '1' when
            y_pos >= Y_ORIGIN + r * SCALE and
            y_pos <  Y_ORIGIN + (r + 1) * SCALE
            else '0';
    end generate GEN_Y;

    GEN_CHAR : for i in 0 to TEXT'length - 1 generate
        -- TEXT(TEXT'low+i) est un caractere fixe pour chaque instance.
        -- Vivado peut donc propager le glyphe comme constante.
        with TEXT(TEXT'low + i) select
            glyph(i) <=
                "01110" & "10001" & "10001" & "11111" & "10001" & "10001" & "10001" when 'A',
                "01111" & "10000" & "10000" & "10000" & "10000" & "10000" & "01111" when 'C',
                "11110" & "10001" & "10001" & "10001" & "10001" & "10001" & "11110" when 'D',
                "11111" & "10000" & "10000" & "11110" & "10000" & "10000" & "11111" when 'E',
                "11111" & "10000" & "10000" & "11110" & "10000" & "10000" & "10000" when 'F',
                "01111" & "10000" & "10000" & "10111" & "10001" & "10001" & "01111" when 'G',
                "00100" & "00100" & "00100" & "00100" & "00100" & "00000" & "00100" when '!',
                "11111" & "00100" & "00100" & "00100" & "00100" & "00100" & "11111" when 'I',
                "10000" & "10000" & "10000" & "10000" & "10000" & "10000" & "11111" when 'L',
                "10001" & "11011" & "10101" & "10101" & "10001" & "10001" & "10001" when 'M',
                "10001" & "11001" & "10101" & "10011" & "10001" & "10001" & "10001" when 'N',
                "01110" & "10001" & "10001" & "10001" & "10001" & "10001" & "01110" when 'O',
                "11110" & "10001" & "10001" & "11110" & "10000" & "10000" & "10000" when 'P',
                "11110" & "10001" & "10001" & "11110" & "10100" & "10010" & "10001" when 'R',
                "01111" & "10000" & "10000" & "01110" & "00001" & "00001" & "11110" when 'S',
                "11111" & "00100" & "00100" & "00100" & "00100" & "00100" & "00100" when 'T',
                "10001" & "10001" & "10001" & "10001" & "10001" & "10001" & "01110" when 'U',
                "10001" & "10001" & "10001" & "10001" & "10001" & "01010" & "00100" when 'V',
                (others => '0') when others;

        -- Cinq plages verticales par caractere (colonne 5 = espace).
        GEN_X : for c in 0 to 4 generate
            active_col(i * 5 + c) <= '1' when
                x_pos >= X_ORIGIN + (i * 6 + c) * SCALE and
                x_pos <  X_ORIGIN + (i * 6 + c + 1) * SCALE
                else '0';
        end generate GEN_X;

        -- Test direct des 5 bits de chaque ligne. Aucun indice variable.
        GEN_ROW : for r in 0 to 6 generate
            lit_row(i * 7 + r) <= active_row(r) and
                ( (active_col(i * 5 + 0) and glyph(i)(34 - r * 5 - 0)) or
                  (active_col(i * 5 + 1) and glyph(i)(34 - r * 5 - 1)) or
                  (active_col(i * 5 + 2) and glyph(i)(34 - r * 5 - 2)) or
                  (active_col(i * 5 + 3) and glyph(i)(34 - r * 5 - 3)) or
                  (active_col(i * 5 + 4) and glyph(i)(34 - r * 5 - 4)) );
        end generate GEN_ROW;

        -- OR des 7 lignes d'un caractere.
        lit_char(i) <= lit_row(i * 7 + 0) or
                       lit_row(i * 7 + 1) or
                       lit_row(i * 7 + 2) or
                       lit_row(i * 7 + 3) or
                       lit_row(i * 7 + 4) or
                       lit_row(i * 7 + 5) or
                       lit_row(i * 7 + 6);
    end generate GEN_CHAR;

    -- OR de tous les caracteres du texte.
    pixel_on <= '1' when lit_char /= (lit_char'range => '0') else '0';
end RTL;
