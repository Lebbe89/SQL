
-- Datenbank wechseln
USE [Videogames];

-- Ausdrücke können Berechnungen durchführen, mit Zeichenketten arbeiten
-- und dabei auch Funktionen verwenden
SELECT [Name] + ' (' + [Nickname] + ')' FROM [dbo].[Spieler];

-- Der einfachste Ausdruck ist jedoch der mit einem konstanten Wert. Dann spielt die Datenbank auch keine Rolle
SELECT 42;

-- Spalten mit Ausdrücken haben ohne Alias keinen Namen
SELECT [Name] + ' (' + [Nickname] + ')' AS 'Name des Spielers' FROM [dbo].[Spieler];

-- Alternativ kann auch eine Funktion zum Einsatz kommen
SELECT CONCAT([Name], ' (', [Nickname], ')') AS 'Name des Spielers' FROM [dbo].[Spieler];

-- String Funktionen --
SELECT   LEN(Name) AS 'Länge des Namens', Name
FROM     Spieler

SELECT   Reverse(Name) AS 'Rückwärts', Name
FROM     Spieler

SELECT   upper(Name) AS 'Großbuchstaben', Name
FROM     Spieler

SELECT   lower(Name) AS 'Großbuchstaben', Name
FROM     Spieler

SELECT   Left(Name,3) AS 'Großbuchstaben', Name
FROM     Spieler;

SELECT   right(Name,3) AS 'Großbuchstaben', Name
FROM     Spieler;

SELECT   Substring(Name,3,2) AS 'Großbuchstaben', Name
FROM     Spieler;

-- String Funktionen
SELECT LEN([Name]) AS 'Länge des Namen',
	   REVERSE([Name]) AS 'Name rückwärts',
	   UPPER([Name]) AS 'Name in GROßBUCHSTABEN',
	   LOWER([Name]) AS 'Name in kleinbuchstaben',
	   LEFT([Name], 2) AS 'Erste beiden Buchstaben',
	   RIGHT([Name], 2) AS 'Letze beiden Buchstaben',
	   SUBSTRING([Name], 2, 2) AS 'Zwei Buchstaben aus dem Namen'
FROM [dbo].[Spieler];

-- Rechnen mit Zahlen
SELECT Punkte,
	   Punkte + 1000  AS '1000 Punkte mehr'
FROM Highscores;

-- Ausdrücke können auch ohne Bezug zur Tabelle verwendet werden
SELECT GETDATE() AS 'Aktuelles Datum/ Uhrzeit',
	   DATEDIFF(MONTH, '1971-12-18', GETDATE()) AS 'Zeitspanne',
	   @@SERVERNAME AS 'Name des Servers';

SELECT GETDATE() AS 'Aktuelles Datum/ Uhrzeit',
	   DATEDIFF(YEAR, '1971-12-18', GETDATE()) AS 'Zeitspanne',
	   @@SERVERNAME AS 'Name des Servers';




