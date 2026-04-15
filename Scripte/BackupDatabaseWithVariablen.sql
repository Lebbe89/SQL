-- Wiederherstellungen müssen die Master DB gemacht werden
use master
-- Befehl zum Wiederherstellen der Videogames DB

restore Database Videogames File = 'videogames'
-- Verzeichnis der Backupdatei und des Files / Erste Datensicherung aus dem File / 
-- Nounload gibt an das die Sicherung nicht entladen werden soll
-- Replace überschreibt eine bestehende Datenbank
-- Stats 10 Fortschritt soll in 10 Stufen angegeben werden
from Disk = 'C:\Backup\Videogames_20241007.bak' with File = 1, Nounload, Replace, Stats = 10