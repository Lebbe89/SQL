use Videogames

-- Ausdrücke bzw. Strings kombinieren
Select Name + ' ( ' + Nickname +' ) ' as 'Spielername' from Spieler 

/* Auskommentierter Text
mehrzeilig wie man sieht. 
das ist ds Ende
*/

-- Der einfachste Ausdruck in SQL mit einem konstanten Wert hier spiel die Datenbank keine Rolle
select 'Ibb'

-- String kombinieren oder zusammenfügen 
Select CONCAT(Name, '( ', Nickname, ' )') as 'Spielername' from Spieler

-- Diese String Funktion gibt mir die Anzahl der Buchstaben zurück
Select Name, LEN(name) as 'Anzahl Buchstaben' from Spieler

-- Rückwärtsschreiben von unserem String
Select Name, Reverse(name) as 'rückwärts' from Spieler

-- Großbuchstaben
Select UPPER(Name) from Spieler

-- Kleinbuchstaben
-- Befehl Felder * Tabelle = Selection /Filter
Select lower(Name) from Spieler Where ID = 2

-- von Links wird abgeschnitten
Select Name, Left(name,3) from Spieler

-- von Rechts wird abgeschnitten
Select Name, Right(name,3) from Spieler

-- Schneidt im String ab Beginn und wievil Zeichen
Select Name, SUBSTRING(Name,3,3) from Spieler

-- String Funktionen
SELECT LEN([Name]) AS 'Länge des Namen',
	   REVERSE([Name]) AS 'Name rückwärts',
	   UPPER([Name]) AS 'Name in GROßBUCHSTABEN',
	   LOWER([Name]) AS 'Name in kleinbuchstaben',
	   LEFT([Name], 2) AS 'Erste beiden Buchstaben',
	   RIGHT([Name], 2) AS 'Letze beiden Buchstaben'
from [dbo].[Spieler];

-- rechnen mit INT ist nicht gut..!
select * from Highscores

select Punkte * 10000 From Highscores

--Standard System Funktionen
select @@SERVERNAME
Select Getdate()
select * from sys.syslanguages
Select @@VERSION
