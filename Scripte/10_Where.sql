-- Where Anweisungen --

use Videogames
-- Selektieren nach dem Namen Alice
Select * from Spieler Where Name = 'Alice'

-- Selektieren nach dem Namen Alice
Select * from Spieler Where ID = 990

-- Referenz:
Select * from Spieler

-- Welche Spieler kommen aus dem Land, das die ID 45 hat?
Select * from Spieler Where HerkunftslandID  = 45

-- Welche Spieler sind aktiv?
Select * from Spieler where Aktiv = 1

-- Welche Spieler sind inaktiv?
Select * from Spieler where Aktiv = 0

-- Logisch 'Oder' wird mit OR formuliert
Select * from Spieler where Name = 'Suzanne' or Name = 'Kirk' or Name = 'wade'

-- Anweisung mit And die nicht funktioniert
Select * from Spieler where Name = 'Suzanne' AND Name = 'Kirk' 

-- Logisch 'Und' wird mit AND formuliert
-- wir wollen alle aktiven Spiel aus dem Herkunftsland 45 
Select * from Spieler Where HerkunftslandID = 45 And Aktiv = 1

-- Logisch 'Nicht' wird mit NOT formuliert
-- zeigt Tupel die nicht im HerkunftslandID leben und die nicht aktiv sind
Select * from Spieler Where Not HerkunftslandID = 45 And Aktiv = 0

-- Ungleichheit mit '!=' oder '<>' formuliert
Select * from Spieler Where HerkunftslandID != 45

Select * from Spieler Where HerkunftslandID <> 45

Select * from Spieler Where Not HerkunftslandID = 45

Select * from Spieler Where Name > 'F'

Select * from Highscores Where Punkte < 1000000

/* alle Datumsangaben die größer sind als s. u.*/
Select ID, SpielerID, VideospielID, Punkte, Zeitpunkt from Highscores Where Zeitpunkt > '1978-06-12'

-- Between Anweisung zwischen und  ---
Select ID, SpielerID, VideospielID, Punkte, Zeitpunkt from Highscores Where Zeitpunkt Between '1978-01-12' and '1978-06-12'

 -- Natürlich können auch Ausdrücke verwendet werden
 Select Punkte, Zeitpunkt from Highscores Where DATEDIFF(day, Zeitpunkt, GETDATE()) < 10000

 Select Punkte, Zeitpunkt, DATEDIFF(WEEK, zeitpunkt, GETDATE()) as 'Dauer' from Highscores 

-- Und auch Unterabfragen
-- Letzte Anmeldung(en)


-- Berechnung der ISO-Woche
SELECT DATEPART(ISO_WEEK, '2024-12-01') AS IsoWoche;

-- Berechnung der Woche (Nicht-ISO, abhängig von den Einstellungen)
SELECT DATEPART(WEEK, '2024-12-01') AS NormaleWoche;

-- Und auch Unterabfragen
-- Letzte Anmeldung(en)
Select * From Spieler Where MitgliedSeit = (select max(mitgliedseit) from Spieler)

Select * From Spieler Where MitgliedSeit = '2016-06-04'

select max(mitgliedseit) from Spieler




