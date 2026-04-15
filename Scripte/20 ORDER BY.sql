use Videogames
-- Sortieren von Datensätzen
-- absteigend sortieren
SELECT     ID, SpielerID, VideospielID, Punkte, Zeitpunkt
FROM        Highscores
ORDER BY SpielerID DESC

-- aufsteigend sortieren
SELECT     ID, SpielerID, VideospielID, Punkte, Zeitpunkt
FROM        Highscores
ORDER BY SpielerID

-- aufsteigend sortieren Sort Nummer mehr fachsortierung
SELECT     ID, SpielerID, VideospielID, Punkte, Zeitpunkt
FROM        Highscores
ORDER BY SpielerID, Punkte