Create Database Kundendb
use Kundendb
-- Erstellen einer Kunden Tabelle
Create Table Kunden(
	ID Int Primary Key Identity(1,1),
	Vorname nvarchar(50),
	Nachname nvarchar(50),
	Email nvarchar(70)
)
-- Erstellen einer Bestellugen Tabelle
Create Table Bestellungen(
	ID Int Primary key Identity(1,1),
	KundenID Int,
	Bestelldatum Date,
	CONSTRAINT FK_Bestellungen_Kunden FOREIGN KEY (KundenID) REFERENCES Kunden(ID)
)


