use Videogames

-- NULL muss besonders behandelt werden.
-- Bei welchen Spielern ist nicht bekannt, seit wann sie Mitglied sind?
-- Achtung Funktion Isnull

select * from Spieler

-- hier werden die Spieler ohne Datum angezeigt
select * from Spieler Where MitgliedSeit is null
-- alle Spieler mit Datum werden angezeigt
select * from Spieler Where MitgliedSeit is not null
-- siehe oben..
Select * from Spieler Where not MitgliedSeit is null
-- liefer kein Erg
Select * from Spieler Where not Null = Null
-- Wenn MitgliedSeit leer (NULL) dann zeige mir das heutige Datum an 
-- ansonsten zeige mir MitgliedSeit an...
Select *, Isnull(Mitgliedseit, Getdate())from Spieler


