-- LIKE erlaubt die Suche in Texten mit Mustern
-- '%' steht für beliebig viele Zeichen
-- '_' steht für ein beliebiges Zeichen
SELECT * FROM [dbo].[Spieler] WHERE [Name] LIKE 'A%';

-- suchbegriff innerhalb des Strings s. u.
SELECT * FROM [dbo].[Spieler] WHERE [Name] LIKE '%man%';

SELECT * FROM [dbo].[Spieler] WHERE [Name] LIKE '%i';

SELECT * FROM [dbo].[Spieler] WHERE [Name] LIKE 'J__n';

SELECT * FROM [dbo].[Spieler] WHERE [Name] LIKE '[A,b,c]%';

SELECT * FROM [dbo].[Spieler] WHERE [Name] LIKE '[A-c]%';

SELECT * FROM [dbo].[Spieler] WHERE [Name] LIKE '[A-c;k-m]%';

