-- Benutzer Login und Rechte!!

-- das Login kann nur über die Masterdatenbank erstellt werden
-- Zuerst müssen Sie hier einen Login User anlegen!

use master
-- Erstellen eines Logins
Create login adminvideo with password = 'Test1234!'
go
-- um den Benutzer zu erstellen benötige ich Zugriff auf die Datenbank
use Videogames
go
-- Erstellen eines User Benutzer in der Videogames DB
Create user adminvideo for login adminvideo
go
-- Hie weise ich dem Benutzer jetzt die Rechte zu dbo_owner
alter role db_owner add member adminvideo