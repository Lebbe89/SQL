

-- Datenbank wechseln
USE [Videogames;

-- NULL muss besonders behandelt werden.
-- Bei welchen Spielern ist nicht bekannt, seit wann sie Mitglied sind?
SELECT * FROM [dbo].[Spieler]
WHERE MitgliedSeit IS NULL;

-- Bei welchen Spielern ist bekannt seit wann sie Mitglied sind?
SELECT * FROM [dbo].[Spieler]
WHERE MitgliedSeit IS NOT NULL;

SELECT * FROM [dbo].[Spieler]
WHERE NOT MitgliedSeit IS  NULL;

-- NULL ist wirklich mit überhaupt nichts identisch
SELECT * FROM [dbo].[Spieler]
WHERE NOT NULL = NULL;

-- ISNULL-Funktion
SELECT *, ISNULL(MitgliedSeit, GETDATE()) FROM [dbo].[Spieler];

