DECLARE @name VARCHAR(50) -- Datenbank Name
DECLARE @path VARCHAR(256) -- Pfad Angabe zum Directory  
DECLARE @fileName VARCHAR(256) -- filename for backup  
DECLARE @fileDate VARCHAR(20) -- used for file name
-- Directory für das Backup
SET @path = 'C:\Backup\'  
-- specify filename format
SELECT @fileDate = CONVERT(VARCHAR(20),GETDATE(),112) 
DECLARE db_cursor CURSOR READ_ONLY FOR  
SELECT name -- Name der Datenbank selectieren
FROM master.sys.databases 
WHERE name NOT IN ('master','model','msdb','tempdb')  -- sucht alle Datenbank heraus ohne die Masterdatenbanken
AND state = 0 -- Prüfung ob Datenbank online sind
AND is_in_standby = 0 -- database is not read only for log shipping
OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @name   
-- RÜCKGABEWERT
-- Rückgabewert	BESCHREIBUNG
-- 0	Die FETCH-Anweisung war erfolgreich.
-- 1	
-- 2	Die abgerufene Zeile fehlt.
-- 9	Der Cursor führt keinen Abrufvorgang aus.
 
WHILE @@FETCH_STATUS = 0   
BEGIN   
   SET @fileName = @path + @name + '_' + @fileDate + '.BAK'  
   BACKUP DATABASE @name TO DISK = @fileName  
   FETCH NEXT FROM db_cursor INTO @name   
END   
 

CLOSE db_cursor   
DEALLOCATE db_cursor