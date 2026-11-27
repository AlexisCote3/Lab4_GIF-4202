
--------------------------------------------------------------------------------
-- PROJET : LE MUR
-- MODULE : detection_joueur
-- CARTE  : Zybo Z7-20
--------------------------------------------------------------------------------
--
-- DESCRIPTION
--
-- Ce module detecte les pixels appartenant potentiellement au joueur.
--
-- Deux modes de fonctionnement :
--
-- MODE NORMAL (debug = '0') :
--   Detection des pixels sombres par leur luminosite.
--
-- MODE DEBUG (debug = '1') :
--   Detection des pixels rouges.
--
-- Les seuils de detection sont configurables avec des generics.
--
-- Ce module est entierement combinatoire.
-- Aucune variable VHDL.
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


--------------------------------------------------------------------------------
-- ENTITY
--------------------------------------------------------------------------------

entity detection_joueur is

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

end detection_joueur;


--------------------------------------------------------------------------------
-- ARCHITECTURE
--------------------------------------------------------------------------------

architecture Behavioral of detection_joueur is

    ---------------------------------------------------------------------------
    -- EXTRACTION DES COMPOSANTES RGB
    ---------------------------------------------------------------------------

    signal red   : unsigned(7 downto 0);
    signal green : unsigned(7 downto 0);
    signal blue  : unsigned(7 downto 0);


    ---------------------------------------------------------------------------
    -- LUMINOSITE
    --
    -- Somme des trois composantes RGB.
    -- Plage : 0 a 765 (10 bits).
    ---------------------------------------------------------------------------

    signal luminosity : unsigned(9 downto 0);


    ---------------------------------------------------------------------------
    -- RESULTATS DES DEUX MODES
    ---------------------------------------------------------------------------

    signal detect_noir  : STD_LOGIC;
    signal detect_rouge : STD_LOGIC;

begin

    ---------------------------------------------------------------------------
    -- VERIFICATION DES SEUILS
    ---------------------------------------------------------------------------

    assert DARK_THRESH <= 255
        report "DARK_THRESH doit etre entre 0 et 255"
        severity failure;

    assert RED_MIN <= 255 and GREEN_MAX <= 255 and BLUE_MAX <= 255
        report "Les seuils RGB doivent etre entre 0 et 255"
        severity failure;


    ---------------------------------------------------------------------------
    -- EXTRACTION DES COMPOSANTES RGB
    ---------------------------------------------------------------------------

    red   <= unsigned(rgb_in(23 downto 16));
    green <= unsigned(rgb_in(15 downto 8));
    blue  <= unsigned(rgb_in(7 downto 0));


    ---------------------------------------------------------------------------
    -- CALCUL DE LA LUMINOSITE
    ---------------------------------------------------------------------------

    luminosity <=
        resize(red, 10) +
        resize(green, 10) +
        resize(blue, 10);


    ---------------------------------------------------------------------------
    -- MODE NORMAL : DETECTION DES PIXELS SOMBRES
    ---------------------------------------------------------------------------

    detect_noir <= '1'
        when luminosity < to_unsigned(3 * DARK_THRESH, 10)
        else '0';


    ---------------------------------------------------------------------------
    -- MODE DEBUG : DETECTION DES PIXELS ROUGES
    --
    -- Un pixel est considere rouge lorsque :
    --
    --   R > RED_MIN
    --   G < GREEN_MAX
    --   B < BLUE_MAX
    ---------------------------------------------------------------------------

    detect_rouge <= '1'
        when red   > to_unsigned(RED_MIN, 8)
         and green < to_unsigned(GREEN_MAX, 8)
         and blue  < to_unsigned(BLUE_MAX, 8)
        else '0';


    ---------------------------------------------------------------------------
    -- SELECTION DU MODE
    --
    -- debug = 0 : detection du noir
    -- debug = 1 : detection du rouge
    ---------------------------------------------------------------------------

    is_pixel_joueur <= detect_rouge
        when debug = '1'
        else detect_noir;

end Behavioral;
