-- Anlegen einer neuen Datenbank

Create Database Kunden_DB
use Kunden_DB
-- Erstellen einer Tablle innerhalb der Datenbank
Create Table Kunden(
	ID INT Primary key Identity(1,1), -- Fängt den Primärschlüssel mit 1 an und erhöht immer um 1
	Vorname nvarchar (50),
	Nachname nvarchar (50),
	Mail nvarchar(70)
)
-- Erstellt die Tabelle 
Create Table Bestellungen(
	ID INT Primary key Identity(1,1),-- Fängt den Primärschlüssel mit 1 an und erhöht immer um 1
	KundenID Int, -- Fremdschüssel aus der Kundentabelle
	Bestelldatum Date, -- Feld Bestelldatum
	Constraint FK_Bestellungen_Kunden Foreign Key(KundenID) References Kunden(ID) 
)