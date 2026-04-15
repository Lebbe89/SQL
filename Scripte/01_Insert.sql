-- Insert Anweisungen d. h. Daten in Tabellen einfügen --

use Videogames

-- Test Anweisung
select * from Laender Where Land Like 'Tukka%' or Land like 'Sowekistan'

-- Anfügen eines Datensatzes
Insert Laender(Land)values('Takka-Tukka Land')
-- Anfügen von mehreren Datensätzen
Insert Laender(Land)values('Tukka-Tikka Land'),('Sowekistan')

-- Fügt den Spieler mit dem Nickname Nicky3000 ein 
Insert Spieler(Name,Nickname)values('','Nicky3000')

Select * from Spieler Where Nickname Like 'Nicky3000'
-- Löscht den Spieler mit der ID 1002
Delete Spieler Where ID Like 1002
