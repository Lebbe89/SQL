
-- Datenbank wechseln
USE [Videogames;

-- Eine Zeile aktualisieren
UPDATE [dbo].[Spieler] SET [MitgliedSeit] = GETDATE()
WHERE [ID] = 3; -- Einschränkung ist meistens(!) sinnvoll

-- Test
SELECT * FROM [dbo].[Spieler] WHERE [ID] = 3;


-- Alle Zeilen aktualisieren
UPDATE [dbo].[Spieler] SET [Name] = 'Teddy';

-- Test. Ups...
SELECT * FROM [dbo].[Spieler];


-- Sind aber Werte ungültig kann die Zeile nicht geändert werden
UPDATE [dbo].[Spieler]
SET [Name] = NULL;

use ProjektDB

update Projekte Set Budget = Budget / 2 Where ID = 1;

-- Die Fehlermöglichkeiten sind extrem mannigfaltig