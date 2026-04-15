use Videogames
-- Datenbank Verbindung herstellen

DECLARE @filedate varchar(50)
DECLARE @filename varchar(50)
DECLARE @filepath varchar(100)

-- Directory für den Pfad
SET @filepath = 'C:\Backup\'
SET @filename = 'Videogames'
-- Setzen des Datums
Select @filedate = Convert(varchar(20),GETDATE(),112)
SET @filename = @filepath + @filename + @filedate +'.bak'

backup database Videogames
-- Beschreibung der Backup Datei bzw. Pfad bitte Datei mit Endung *.bak
to disk = @filename
-- Formatierung 
with format, Medianame ='SQLServerBackup',Name = 'Fullbackup Videogames'