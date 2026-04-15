
use Videogames

Insert Laender(Land)Values('Takka Tukka Land')

--Testen ob das Land verfügbar ist

select * from Laender where Land = 'Legoland'

--Mehrere Datensätze auf einmal einfügen

Insert Laender(Land)Values('Smörland'),('Niemerland'),('Legoland')

--Anweisung mit zwei Feldern
Select * from Spieler Where name ='nicky'

--Einfügen von mehreren Feldern--
insert Spieler(Name, Nickname, HerkunftslandID, MitgliedSeit)values('Nicky','Nicky6000',43, getdate())

--Löschen von dem obigen Datensatz
delete Spieler where id = 1002
--Löschen von gezielten Datensätzen
--Befehl, Tabelle gegen die gelöscht wird und Selection
Delete Laender Where id = 103

select * From Laender