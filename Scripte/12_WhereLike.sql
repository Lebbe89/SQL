-- Like Anweisungen programmieren

use Videogames

-- LIKE erlaubt die Suche in Texten mit Mustern
-- '%' steht für beliebig viele Zeichen
-- '_' steht für ein beliebiges Zeichen

Select * from Spieler Where Name Like 'Au%'

Select * from Spieler Where Name Like '%man%'

Select * from Spieler Where Name Like '%i'

Select * from Spieler Where Name Like 'J__n'

Select * from Spieler Where Name Like '[a,n,c]%'

Select * from Spieler Where Name Like '[a-f]%'

Select * from Spieler Where Name Like '[a-c,k-m]%'