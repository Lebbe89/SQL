-- Count Anweisung anschauen und verstehen

use Videogames
-- Zählt die Datensätze innerhalb meiner Tabelle alle Felder durch
select COUNT(*) from Spieler -- Orientierung ID

-- Zählt die Datensätze innerhalb meiner Tabelle alle Felder durch
-- aber nur die halt gefüllt sind
select COUNT(HerkunftslandID) from Spieler
select HerkunftslandID from Spieler where HerkunftslandID Is null

Select count(All Name) as 'Spieleranzahl' from Spieler

-- Ich bekomme hier die eindeutigen Namen
Select Distinct name from Spieler
-- Gibt mir die Anzahl der eindeutigen Namen zurück
Select COUNT(distinct Name) as 'Spieleranzahl' from Spieler
