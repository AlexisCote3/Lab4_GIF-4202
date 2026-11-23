
--------------------------------------------------------------------------------
-- PROJET : LE MUR
-- MODULE : affichage_detection
-- CARTE  : Zybo Z7-20
--------------------------------------------------------------------------------
--
-- DESCRIPTION
--
-- Ce module permet de verifier visuellement le fonctionnement
-- du module detection_joueur.
--
-- Il recoit :
--   - Le pixel RGB original provenant de la camera
--   - Le resultat de detection du joueur pour ce pixel
--   - Les signaux de synchronisation du flux video
--
-- Lorsque is_pixel_joueur = '1', le pixel original est
-- remplace par un pixel rouge.
--
-- Lorsque is_pixel_joueur = '0', le pixel original est conserve.
--
-- Les signaux VDE, HSYNC et VSYNC sont transmis sans modification.
--
-- Ce module est entierement combinatoire.
-- Il ne necessite ni horloge, ni reset.
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------------------------------
-- ENTITY
--------------------------------------------------------------------------------

entity affichage_detection is

    generic (

        ------------------------------------------------------------------------
        -- COULEUR DE DETECTION
        --
        -- Rouge par defaut :
        --   R = FF (255)
        --   G = 00 (0)
        --   B = 00 (0)
        --
        -- Autres exemples :
        --   Vert  = x"00FF00"
        --   Bleu  = x"0000FF"
        --   Rose  = x"FF00FF"
        ------------------------------------------------------------------------

        DETECTION_COLOR : STD_LOGIC_VECTOR(23 downto 0) := x"FF0000"

    );

    port (

        ------------------------------------------------------------------------
        -- ENTREES VIDEO
        --
        -- rgb_in : pixel original de la camera sur 24 bits.
        --
        -- vde_in : 1 lorsque le pixel appartient a l'image active.
        --
        -- hsync_in / vsync_in :
        -- Signaux de synchronisation horizontale et verticale.
        ------------------------------------------------------------------------

        rgb_in   : in STD_LOGIC_VECTOR(23 downto 0);
        vde_in   : in STD_LOGIC;
        hsync_in : in STD_LOGIC;
        vsync_in : in STD_LOGIC;


        ------------------------------------------------------------------------
        -- ENTREE DE DETECTION
        --
        -- is_pixel_joueur = 1 : pixel detecte comme joueur.
        -- is_pixel_joueur = 0 : pixel non detecte.
        ------------------------------------------------------------------------

        is_pixel_joueur : in STD_LOGIC;


        ------------------------------------------------------------------------
        -- SORTIES VIDEO
        --
        -- rgb_out : pixel original ou couleur de detection.
        --
        -- Les signaux de synchronisation sont transmis
        -- directement au bloc de transmission HDMI.
        ------------------------------------------------------------------------

        rgb_out   : out STD_LOGIC_VECTOR(23 downto 0);
        vde_out   : out STD_LOGIC;
        hsync_out : out STD_LOGIC;
        vsync_out : out STD_LOGIC

    );

end affichage_detection;

--------------------------------------------------------------------------------
-- ARCHITECTURE
--------------------------------------------------------------------------------

architecture Behavioral of affichage_detection is

begin

    ----------------------------------------------------------------------------
    -- SUPERPOSITION DE LA COULEUR DE DETECTION
    --
    -- Si le pixel appartient a la zone active (VDE = 1)
    -- ET que detection_joueur indique la presence du joueur :
    --
    --     rgb_out = DETECTION_COLOR
    --
    -- Sinon :
    --
    --     rgb_out = rgb_in
    --
    -- Le test sur VDE evite de remplacer les pixels pendant
    -- les intervalles de synchronisation de l'image.
    ----------------------------------------------------------------------------

    rgb_out <= DETECTION_COLOR
        when (vde_in = '1' and is_pixel_joueur = '1')
        else rgb_in;


    ----------------------------------------------------------------------------
    -- TRANSMISSION DES SIGNAUX DE SYNCHRONISATION
    --
    -- Aucun traitement n'est effectue sur ces signaux.
    --
    -- Ils sont directement transmis au module suivant.
    ----------------------------------------------------------------------------

    vde_out   <= vde_in;
    hsync_out <= hsync_in;
    vsync_out <= vsync_in;

end Behavioral;