--where Anweisung --
use Videogames
--Selectieren nach dem Namen Alice
select * from Spieler Where Name = 'alice'

--Selectieren nach der SpielerID 990
select * from Spieler Where ID = 990

--Referenz:
Select * From Spieler

--Selectieren nach der HerkunftslandID 45
select * from Spieler Where HerkunftslandID = 45

--Welche Spieler sind aktiv?
select * From Spieler Where aktiv = 1

--Welche Spieler sind inaktiv?
select * From Spieler Where aktiv = 0


select * From Spieler Where aktiv = NULL

-- Logisch 'Oder' wird mit OR formuliert
select * From Spieler Where name = 'Suzanne' or name = 'Kirk' or Name = 'wade'

--Anweisung mit AND die NCIHT funktioniert
select * From Spieler Where name = 'Suzanne' and name = 'Kirk' 

-- Logisch 'Und' wird mit AND formuliert
Select * from Spieler where HerkunftslandID = 45 and Aktiv = 1

-- Logisch 'Nicht' wird mit NOT formuliert
select * from Spieler where not HerkunftslandID = 45 and aktiv = 0

-- Ungleichheit mit '!=' oder '<>' formuliert
select * from Spieler where HerkunftslandID != 45

select * from Spieler where HerkunftslandID <>45

select * from Spieler where name > 'f'

--Kleiner als 
select * from Highscores where Punkte < 1000000

/* alle Datumsangaben die größer sind als s. u.*/
select ID, SpielerID, VideospielID, Punkte, Zeitpunkt from Highscores where Zeitpunkt > '1978-06-12'

--between anweisung zwischen und --
select ID, SpielerID, VideospielID, Punkte, Zeitpunkt from Highscores where Zeitpunkt between '1978-01-12' and '1978-05-12'

-- Natürlich können auch Ausdrücke verwendet werden
 select Punkte, Zeitpunkt from Highscores where DATEDIFF(day, zeitpunkt, GETDATE()) < 7200

 select Punkte, Zeitpunkt,DATEDIFF(ISO_WEEK, Zeitpunkt, GETDATE()) as 'dauer' from Highscores

-- Berechnung der ISO-Woche
SELECT DATEPART(ISO_WEEK, '2024-12-01') AS IsoWoche; 
-- Berechnung der Woche (Nicht-ISO, abhängig von den Einstellungen)
SELECT DATEPART(WEEK, '2024-12-01') AS NormaleWoche;


--unterabfragen(die letzte Registrierung 
 select * from Spieler where MitgliedSeit = (Select max(mitgliedseit) from Spieler)


 Select max(mitgliedseit) From Spieler