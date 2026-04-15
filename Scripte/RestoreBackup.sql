use master

restore Database Videogames File = 'videogames'
from Disk = 'C:\Backup\Videogames_20241007.bak' with File = 1, Nounload, Replace, Stats = 10