
-- SQL pro vypsani seznamu vsech alb vcetne interpreta a poctu skladeb na albu
-- serazeno dle nazvu interpreta a nazvu a alba
-- doplneny indexy na interpret.nazev a album.nazev

SELECT
interpret.nazev AS nazev_interpreta,
album.nazev AS nazev_alba,
album.datum_vydani,
COUNT(album_skladba.id_album_skladba) as pocet_skladeb
FROM album
INNER JOIN album_skladba ON album_skladba.id_album=album.id_album
INNER JOIN album_interpret ON album_interpret.id_album=album.id_album
INNER JOIN interpret ON interpret.id_interpret=album_interpret.id_interpret
GROUP BY
album.id_album
ORDER BY
interpret.nazev ASC,
album.nazev ASC