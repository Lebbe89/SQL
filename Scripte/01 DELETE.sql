-- Datenbank wechseln
USE Videogames;

-- Eine Zeile löschen
DELETE .Spieler
WHERE ID = 3; -- Einschränkung ist meistens(!) sinnvoll

-- Test
SELECT * FROM .Spieler WHERE ID = 3;


-- Alle Zeilen löschen
DELETE .Spieler;

-- Test. Ups...
SELECT * FROM .Spieler;


-- Spieler löschen, die keinen Highscore haben?
DELETE .Spieler
WHERE NOT ID IN (SELECT SpielerID FROM .Highscores);