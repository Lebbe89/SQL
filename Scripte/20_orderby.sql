--21_OrderByTop

-- Sortierung von den 10 besten Ergebnissen
Select Top 10 * from Highscores order by punkte desc

-- Achtung hier wird dann der Primärschlüssel genommen
Select Top 10 * from Highscores 

-- Sortierung von den 5 schlechtesten Ergebnisse
Select Top 5 * from Highscores order by punkte asc

-- Sortierung von den 10 schlechtesten Ergebnisse
Select Top 10 * from Highscores order by punkte asc

-- Angabe eine Prozentertes
Select Top 10 Percent * from Highscores order by punkte asc

