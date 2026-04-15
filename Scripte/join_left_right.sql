use Videogames
 
-- Inner Join nur die Spieler, die auch eine GeschlechtsID haben
SELECT        Spieler.Name, Spieler.Nickname, Geschlecht.Anrede, Geschlecht.Briefanrede
FROM            Geschlecht INNER JOIN
                         Spieler ON Geschlecht.ID = Spieler.GeschlechtsID
 
-- RIGHT OUTER JOIN bekomme hier alle Spiel angezeigt auch ohne das Geschlecht
SELECT        Spieler.Name, Spieler.Nickname, Geschlecht.Anrede
FROM            Geschlecht RIGHT OUTER JOIN
                         Spieler ON Geschlecht.ID = Spieler.GeschlechtsID
 
/* Hier werden nur die Spieler gezeigt die eine GeschlchtsID haben*/
SELECT        Spieler.Name, Spieler.Nickname, Geschlecht.Anrede
FROM            Geschlecht LEFT OUTER JOIN
                         Spieler ON Geschlecht.ID = Spieler.GeschlechtsID
 
/* LEFT OUTER Join hier werden nur die Datengezeigt die auch eine Geschlechts ID haben*/
SELECT        Geschlecht.Anrede, Spieler.Name, Spieler.Nickname
FROM            Geschlecht LEFT OUTER JOIN
                         Spieler ON Geschlecht.ID = Spieler.GeschlechtsID