-- Benutzer Login und Rechte!!
 
-- das Login kann nur über die Masterdatenbank erstellt werden
-- Zuerst müssen Sie hier einen Login User anlegen!

use master
--Erstellen eines Logins
Create login admin_video with password = 'test'
go 
--um den Benutzer zu erstellen benötige Zugriff aud die Datenbank
use Videogames
go
--Erstellen eines User Benutzer in der Videogames DB
Create user admin_video for login admin_video
go
--Hier weise ich dem Benutzer die Rechte zu dbo_ower
alter role db_owner add member admin_video
