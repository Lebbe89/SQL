use Videogames
-- Erstell ein Backup von der Videogames Datenbank
backup database Videogames
to disk = 'C:\Backup\videogames_07_10_2024.bak'
WITH FORMAT, MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of Videogames';

---------------------------------------------------------------------------

-- Wiederherstellungen müssen die Master DB gemacht werden
use master
-- Befehl zum Wiederherstellen der Videogames DB
 
restore Database Videogames File = 'videogames'
-- Verzeichnis der Backupdatei und des Files / Erste Datensicherung aus dem File / 
-- Nounload gibt an das die Sicherung nicht entladen werden soll
-- Replace überschreibt eine bestehende Datenbank
-- Stats 10 Fortschritt soll in 10 Stufen angegeben werden
from Disk = 'C:\Backup\Videogames_20241007.bak' 
with File = 1, Nounload, Replace, Stats = 10




use Videogames

--Variable für die MSSQL Datenbank
--Platzhalter
declare @DatabaseName nvarchar(50) --Name der Datenbank
declare @Backupfile nvarchar(255) --Name des Backup Files
declare @path nvarchar(50) --Name des Pfads
declare @filedate nvarchar(20) --Systemdatum anzeigen
declare @filename nvarchar(120)

--Werte einsetzen
set @path = 'C:\Backup\'
set @DatabaseName = 'Videogames'
--Wir benötigen noch das aktuelle Systemdatum
select @filedate = Convert(varchar(20),getdate(),112) --112 ist die gekürzte form vom systemdatum --2024-10-08
set @filename = @path + @DatabaseName + '_' + @filedate + '.bak'

backup database @DatabaseName
to disk = @filename
WITH FORMAT, MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of Videogames';