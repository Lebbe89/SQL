-- MIN und MAX Aggregate z. B. SUM/AVG/COUNT

use Videogames
-- Datum an dem sich ein Spieler zuletzt angemeldet hat
Select Max(MitgliedSeit) from Spieler

-- Wann sich ein Spieler das erst Mal angemeldet hat
Select MIN(MitgliedSeit) from Spieler

-- Beides zusammen abbilden in einer Zeile
Select MIN(MitgliedSeit) as 'Erste Anmeldung', MAX(MitgliedSeit) as 'Letzte Anmeldung' from Spieler

-- Durchschnitt berechnen
Select AVG(Punkte) as 'Durchschnittliche Punktezahl' from Highscores

-- Durchschnitt berechnen
Select AVG(CAST(Punkte as bigint)) as 'Durchschnittliche Punktezahl' from Highscores
