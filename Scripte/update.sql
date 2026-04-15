--Update Anweisung -- die aktualisiert bestehende Datensätze
use Videogames
-- Befehl, Tabelle, SET, Spalte, Selection mit Where 
update Spieler SET Name = 'Nicky3' Where Name = 'Nicky2'
-- Testing
Select * from Spieler Where Name ='Nicky'
 
-- Upate Anweisung mit Getdate()
Delete from Spieler Where ID = 1004
 
-- Prüfung ob es Spieler gibt die bei Mitgliedseit nicht drin stehen haben (NULL) empty
Select * from Spieler Where MitgliedSeit = CONVERT(date,Getdate())
 
Update Spieler SET MitgliedSeit = GETDATE() Where MitgliedSeit is null
 
-- Wir schauen uns GETDATE an
Select GETDATE() -- erzeugt mir bis auf die Milisecunde die Systemzeit
 
-- Gibt den aktuellen Tag des Monats zurück...
Select DAY(GETDATE())
 
-- Gibt den aktuellen Tagesname zurück
Select DATENAME(WEEKDAY,Getdate())
 
-- Gibt die aktuelle Iso Woche zurück
Select DATENAME(ISO_WEEK,Getdate())
