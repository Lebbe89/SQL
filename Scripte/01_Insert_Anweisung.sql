-- Insert Anweisung 
use Videogames
-- Befehl, Tabelle, Spalte
Insert Laender(Land)values('Takka Tukka Land')

-- Testen ob das Land verfügbar ist
select * from Laender Where Land = 'Legoland'

-- Mehrere Datensätze auf einmal einfügen 
Insert Laender(Land)values('Smörland'),('Niemerland'),('Legoland')

-- Löschen von gezielten Datensätzen
-- Befehl, Tabelle gegen die gelöscht wird und Selection
Delete Laender Where ID = 104

Select * from Laender Where ID = 104

-- Anweisung mit zwei Feldern
Select * from Spieler Where Name ='Nicky'

-- Einfügen von 2 Feldern --
Insert Spieler(Name, Nickname, HerkunftslandID, MitgliedSeit)values('Nicky','Nicky6000',43, GETDATE())

-- Löschen von dem obigen Datensatz
Delete from Spieler Where ID = 1002
Select Name, Nickname From Spieler Where ID = 1002