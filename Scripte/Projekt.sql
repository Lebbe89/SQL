--Aufgabe Projekt Datenbank

--Erstellen der Datenbank
Create Database ProjektDB
use ProjektDB
--Erstellen der ersten Tabelle
Create Table Projekte(
ID int Primary key Identity(1,1),
Projektname nvarchar(255) NOT NULL,
Startdatum Date,
Enddatum date,
Budget decimal(18,2)
)


Create table Mitarbeiter(
ID int Primary key Identity(1,1),
Vorname nvarchar(50),
Nachname nvarchar(50),
Abteilung nvarchar(100)
)


Create Table Aufgaben(
Aufgabenname nvarchar(255) NOT NULL,
Beschreibung text,
Startdatum Date,
Enddatum date,
Status nvarchar(50),
ProjektID int,
MitarbeiterID int,
Constraint FK_Mitarbeiter_Aufgaben Foreign Key(MitarbeiterID) References Mitarbeiter(ID),
Constraint FK_Projekt_Aufgaben Foreign Key(ProjektID) References Projekte(ID)
)

insert into Projekte (Projektname,Startdatum,Enddatum,Budget) Values
('Holzhandel Homepage','2024-08-12','2024-10-15','3000'),
('Inventur_app','2023-05-28','2024-10-09','10000'),
('Leiterplatten für Feuerschutztüren','2024-01-18','2024-08-29','5000'),
('Homepage Hallenbad','2024-06-12','2025-03-01','2500'),
('DB Optimierung','2022-02-19','2026-05-01','20000')

insert into Mitarbeiter (Vorname,Nachname,Abteilung) Values
('Hans','Meier','IT'),
('Juergen','Keiser','IT'),
('Chantal','Hofmann','Buero')



insert into Aufgaben (Aufgabenname,Beschreibung,Startdatum,Enddatum,Status) Values
('Projekt Datenbank', 'Erstellen der Projekt Datenbank','2024-10-10','2024-10-28','in Bearbeitung'),
('Blizzard Gear Shop','Fehlerhafte Anzeige der alten Preise','2024-10-24','3000-01-01','Noch nicht in Bearbeitung'),
('Microcontroller','Microcontroller Feuerschutztür für S&S','2023-05-20','2024-01-10','Erledigt'),
('Homepage Müller GmbH','Full Stack Homepage für Müller GmbH','2023-02-18','2023-10-25','Erledigt'),
('Landburschen HP','Aktualisierung Landburschen Kalender 2025','2024-05-20','2024-10-01','Erledigt'),
('E-Apotheke Kleiner','E-Apotheke Full Stack für Herr Kleiner','2024-10-20','2025-06-20','in Bearbeitung'),
('Wizard App','Wizard App','2024-08-30','2026-08-30','in Bearbeitung'),
('Kundensupport-Schulung','Schulung bei Müller GmbH','2024-09-25', '2024-10-22', 'in Bearbeitung'),
('System-Backup Landburschen HP','System-Backup durchführen','2024-10-15', '2024-10-16','offen'),
('Newsletter Müller GmbH','E-Mail-Newsletter erstellen','2024-10-08', '2024-10-10', 'abgeschlossen')


--Erstellen eines Logins
Create login ProjektAdmin with password = 'Test1234!'
--um den Benutzer zu erstellen benötige Zugriff aud die Datenbank
use ProjektDB

Create user ProjektAdmin for login admin_projekt
--Hier weise ich dem Benutzer die Rechte zu dbo_ower
alter role db_owner add member admin_projekt

--Erweiterung Nr.1 
--a.)Benötigten eine Status Tabelle
select Status
into Status 
from Aufgaben
group by Status

--b.)Werte aus der Tabelle aufgaben ohne Dupletten in die neue Tabelle einfügen
--c.)Die Aufgaben Tabelle um ein feld StatusID erweitern
--d.)StatusIDs eintragen/aktualisieren
--e.)Feld Status nach testen löschen

--erweitern der Status Tabelle um ein Primär Schlüssel
select * from Aufgaben

alter Table Status add ID int Primary Key Identity(1,1)

update Aufgaben set StatusID = Status.ID from Aufgaben Inner Join Status on Aufgaben.Status = Status.Status

alter Table Aufgaben drop column Status

UPDATE    Aufgaben
SET           StatusID = Aufgaben.StatusID.ID
FROM        Aufgaben INNER JOIN
                  Status ON Aufgaben.StatusID = Status.ID


--Erweitern Sie die Tabelle Mitarbeiter um das Feld Stundensatz. Tragen Sie dort den Wert 25 ein.

alter table Mitarbeiter add Stundensatz decimal(10,2) default 25

update Mitarbeiter
set Stundensatz = 25 
where Stundensatz is NULL

select * from Mitarbeiter

--Erstellen Sie eine Tabelle „AufgabenStunden“. 
--Hier sollen Arbeitszeiten pro Mitarbeiter und Aufgabe eingetragen werden mit Start und Endzeit. 
--Wie gestalten Sie diese Tabelle am besten um das abzu-bilden.

-- Erstellen der Tabelle AufgabenStunden
CREATE TABLE AufgabenStunden (
    aufgabenstunden_ID int Primary key Identity(1,1),       
    mitarbeiter_id INT NOT NULL,     
    aufgabe_id INT NOT NULL,
    startzeit DATETIME NOT NULL,
    endzeit DATETIME NOT NULL,
    dauer AS datediff(MINUTE, startzeit, endzeit)
)

    -- Fremdschlüssel-Verknüpfungen
update AufgabenStunden CONSTRAINT FK_Mitarbeiter FOREIGN KEY (mitarbeiter_id) REFERENCES mitarbeiter(mitarbeiter_id)
update AufgabenStunden FOREIGN KEY (aufgabe_id) REFERENCES aufgaben(aufgabe_id)
