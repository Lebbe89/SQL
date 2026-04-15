-- Datenbank wechseln oder auswählen
use Videogames

-- alle Spalten und alle Zeitel (Tupel / Rows) von der Spieler Tabelle (Selection)
SELECT * from Spieler 

-- Zeigt nur das Feld Name und Nickname (Projektion)
Select name, nickname from Spieler

-- Zeigt nur das Feld Name und Nickname mit Alias
Select name as 'Spielname', nickname as 'Spitz Name' from Spieler