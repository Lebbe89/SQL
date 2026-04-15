-- Erstellen einer Datenbank mit dem Namen Kundendb
Create Database KundenDB

--Erstellen einer Tabelle innerhalb einer Datenbank 
Create Table Kunden(
	ID int Primary key Identity(1,1), --Fängt den Primärschlüssel mit 1 an und erhöht immer um 1
	Vorname nvarchar(50),
	Nachname nvarchar(50),
	Mail nvarchar(70)
)
--Erstellt die Tabelle Bestellung
Create table Bestellung(
	ID INT Primary key Identity(1,1),
	KundenID Int, --Fremdschlüssel aus der Kundentabelle
	Bestelldatum Date, --Feld Bestelldatum
	Constraint FK_Bestellungen_Kunden Foreign Key(KundenID) References Kunden(ID)
)
