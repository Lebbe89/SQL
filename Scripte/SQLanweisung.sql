use Videogames
--Ausdrücken bzw. String kombinieren 
select Name +'( '+ Nickname +' )' as 'Spielername' from Spieler

--Der einfachste Ausdruck in SQL mit einem konstanten Wert hier spielt die Datenbank keine Rolle 
select 'string'

-- Strings kombinieren oder zusammenfügen
select concat(Name, '( ' ,Nickname, ' )' ) as 'Spielername' from Spieler

--Diese String funkion gibt mir die Anzahl der Buchstaben zurück
select Name, len(name) as 'Anzahl Buchstaben' from Spieler

--Rückwärtsschreiben von userem String
select Name, reverse(name) as 'Anzahl Buchstaben' from Spieler

--Alles in GROßBUCHSTABEN
select upper(Name) from Spieler

--Alles in kleinbuchstaben
select lower(Name) from Spieler

--zeigt die ersten 3 Buchstaben von links an
select left(name,3) from Spieler

--zeigt die letzten 3 Buchstaben von rechts an
select right(name,3) from Spieler

--Schneidet im String ab Beginn und wieviel Zeichen
select Name, SUBSTRING(name,3,2) from Spieler

--String Funktionen
SELECT LEN([Name]) AS 'Länge des Namen',
	   REVERSE([Name]) AS 'Name rückwärts',
	   UPPER([Name]) AS 'Name in GROßBUCHSTABEN',
	   LOWER([Name]) AS 'Name in kleinbuchstaben',
	   LEFT([Name], 2) AS 'Erste beiden Buchstaben',
	   RIGHT([Name], 2) AS 'Letze beiden Buchstaben',
	   SUBSTRING([Name], 2, 2) AS 'Zwei Buchstaben aus dem Namen'
FROM [dbo].[Spieler];


--Rechnen mit INT nicht gut !!!
select * from Highscores

select Punkte * 10000 from Highscores

--
select @@servername
select getdate()
select * from sys.syslanguages
select @@VERSION

--Datenbank Datein
--MDF = MasterDataFile (gespeicher)
--LDF = Logfile Date File (Wann das war unf erfolgreich)
