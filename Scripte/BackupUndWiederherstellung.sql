use Videogames

-- Variable für die MSSQL Datenbanken
-- Platzhalter
Declare @name nvarchar(50) -- Name der Datenbank
Declare @BackupFile nvarchar(250) -- Name des Backup Files
Declare @path nvarchar(50) -- Name des Pfads
Declare @fileDate nvarchar(20) -- Systemdatum anzeigen
Declare @filename nvarchar(120)

-- Werte einsetzen
Set @path = 'C:\Backup\'
Set @name = 'Videogames'
-- Wir benötigen hier noch das aktuelle Systemdatum
select @fileDate = CONVERT(varchar(20),GETDATE(),112)
SET @filename = @path + @name +'_' + @fileDate +'.bak'

backup database @Name
to disk = @filename
WITH FORMAT, MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of Videogames';

