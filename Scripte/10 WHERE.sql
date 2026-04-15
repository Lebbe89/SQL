
-- Datenbank wechseln
USE [Videogames;

-- Zeilen können mit Bedinungen (Prädikate) gefiltert werden
SELECT * FROM [dbo].[Spieler]
WHERE [Name] = 'Alice';

-- Welche Spieler kommen aus dem Land, das die ID 45 hat?
SELECT * FROM [dbo].[Spieler] WHERE [HerkunftslandID] = 45;

-- Welche Spieler sind aktiv?
SELECT * FROM [dbo].[Spieler] WHERE [Aktiv] = 1;

-- Logisch 'Oder' wird mit OR formuliert
SELECT * FROM [dbo].[Spieler]
WHERE [Name] = 'Suzanne' OR [Name] = 'Kirk' OR [Name] = 'Wade';

-- Logisch 'Und' wird mit AND formuliert
SELECT * FROM [dbo].[Spieler]
WHERE [HerkunftslandID] = 45 AND [Aktiv] = 0;
 mit 
-- Logisch 'Nicht' wird mit NOT formuliert
SELECT * FROM [dbo].[Spieler]
WHERE NOT [HerkunftslandID] = 45 AND [Aktiv] = 0;

-- Dies bezieht sich auf den nächsten Ausdruck oder die Klammer
SELECT * FROM [dbo].[Spieler]
WHERE NOT ([HerkunftslandID] = 45 AND [Aktiv] = 0);

-- Ungleichheit mit '!=' oder '<>' formuliert
SELECT * FROM [dbo].[Spieler]
WHERE [HerkunftslandID] != 100;

-- Größer und Kleiner sind auch möglich. Auch bei Zeichenfolgen und Datum/ Uhrzeit
SELECT * FROM [dbo].[Spieler]
WHERE [Name] > 'F';

SELECT * FROM Highscores WHERE Punkte < 1000000;

/* alle Datumsangaben die größer sind als s. u.*/
SELECT   ID, SpielerID, VideospielID, Punkte, Zeitpunkt
FROM     Highscores
WHERE   (Zeitpunkt > '1978-06-12')

SELECT   ID, SpielerID, VideospielID, Punkte, Zeitpunkt
FROM     Highscores
WHERE   Zeitpunkt Between '1978-01-12' and '1978-06-12';


 -- Natürlich können auch Ausdrücke verwendet werden
SELECT [Punkte], [Zeitpunkt] FROM [dbo].[Highscores]
WHERE DATEDIFF(DAY, [Zeitpunkt], GETDATE()) < 100;

-- Und auch Unterabfragen
-- Letzte Anmeldung(en)
SELECT * FROM [dbo].[Spieler]
WHERE [MitgliedSeit] = (SELECT MAX([MitgliedSeit]) FROM [dbo].[Spieler])