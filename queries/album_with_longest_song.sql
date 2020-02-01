
-- SQL pro vypsani alba s nejdelsi pisnickou (vcetne interpreta)
-- doplnen index na skladba.delka

SELECT
interpret.nazev AS nazev_interpreta,
album.nazev AS nazev_alba,
album.datum_vydani,
skladba.delka AS delka_skladby
FROM album
INNER JOIN album_skladba ON album_skladba.id_album=album.id_album
INNER JOIN skladba ON skladba.id_skladba=album_skladba.id_skladba
INNER JOIN album_interpret ON album_interpret.id_album=album.id_album
INNER JOIN interpret ON interpret.id_interpret=album_interpret.id_interpret
WHERE
skladba.delka = (SELECT MAX(delka) as delka FROM skladba)