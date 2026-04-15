-- Update Anweisungen -- 
use Videogames
-- Reine Kontrolle da Kontrollfreak
Select * from Spieler Where ID = 3

-- Hier wird das Datum geändert und zwar wird hier das Systemdatum eingetragen
Update Spieler Set MitgliedSeit = Getdate() Where ID = 3

-- Ändere seinen Name von Josh auf Joshi
Update Spieler Set Name ='Joshi' 

select * from Spieler