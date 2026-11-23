--------------------------------------------------------------------------------
-- PROJET : LE MUR
-- MODULE : detection_joueur
-- CARTE  : Zybo Z7-20
--------------------------------------------------------------------------------
--
-- DESCRIPTION
--
-- Ce module determine si un pixel provenant de la camera
-- appartient potentiellement au joueur.
--
-- On suppose que :
--   - Le fond de l'image est relativement clair.
--   - Le joueur porte des vetements fonces.
--
-- La detection repose sur la luminosite du pixel.
--
-- ENTREES :
--   rgb_in : Pixel RGB code sur 24 bits.
--
-- SORTIES :
--   is_pixel_joueur :
--       1 = pixel considere comme appartenant au joueur
--       0 = pixel considere comme appartenant au fond
--
-- PARAMETRE :
--   DARK_THRESH : Seuil de luminosite configurable.
--
-- Ce module est entierement combinatoire.
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


--------------------------------------------------------------------------------
-- ENTITY
--------------------------------------------------------------------------------

entity detection_joueur is

    generic (
        -- Seuil moyen de luminosite, entre 0 et 255.
        DARK_THRESH : natural := 25
    );

    port (
        -- Pixel d'entree :
        -- R = bits 23 a 16
        -- G = bits 15 a 8
        -- B = bits 7 a 0
        rgb_in : in STD_LOGIC_VECTOR(23 downto 0);

        -- Resultat de la detection.
        is_pixel_joueur : out STD_LOGIC
    );

end detection_joueur;


--------------------------------------------------------------------------------
-- ARCHITECTURE
--------------------------------------------------------------------------------

architecture Behavioral of detection_joueur is

    ---------------------------------------------------------------------------
    -- SIGNAL : luminosity
    --
    -- Somme des composantes RGB.
    --
    -- Chaque couleur possede 8 bits (0 a 255).
    --
    -- La somme varie donc entre :
    --     Minimum = 0
    --     Maximum = 765
    --
    -- Il faut 10 bits pour representer cette somme.
    ---------------------------------------------------------------------------

    signal luminosity : unsigned(9 downto 0);

begin

    ---------------------------------------------------------------------------
    -- VERIFICATION DU PARAMETRE
    --
    -- Le seuil doit etre compris entre 0 et 255.
    ---------------------------------------------------------------------------

    assert DARK_THRESH <= 255
        report "DARK_THRESH doit etre entre 0 et 255"
        severity failure;


    ---------------------------------------------------------------------------
    -- CALCUL DE LA LUMINOSITE
    --
    -- luminosity = R + G + B
    --
    -- Chaque composante est convertie en unsigned puis
    -- agrandie sur 10 bits avant l'addition.
    --
    -- Cela evite les debordements lors du calcul.
    ---------------------------------------------------------------------------

    luminosity <=
        resize(unsigned(rgb_in(23 downto 16)), 10) +
        resize(unsigned(rgb_in(15 downto 8)), 10) +
        resize(unsigned(rgb_in(7 downto 0)), 10);


    ---------------------------------------------------------------------------
    -- DETECTION DU JOUEUR
    --
    -- Si la luminosite est inferieure a trois fois
    -- le seuil moyen, le pixel est considere sombre.
    --
    -- Exemple pour DARK_THRESH = 100 :
    --
    --     R + G + B < 300
    --
    -- Pixel noir (0,0,0) :
    --     luminosity = 0
    --     is_pixel_joueur = 1
    --
    -- Pixel blanc (255,255,255) :
    --     luminosity = 765
    --     is_pixel_joueur = 0
    ---------------------------------------------------------------------------

    is_pixel_joueur <= '1'
        when luminosity < to_unsigned(3 * DARK_THRESH, 10)
        else '0';

end Behavioral;