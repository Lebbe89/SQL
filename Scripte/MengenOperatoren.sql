use Kunden_DB
-- Union Anweisung Vereinigung --
Select Vorname, Nachname, Mail from Kunden
UNION 
Select Vorname, Nachname, Mail from KundenNew
-- UNION ALL
Select Vorname, Nachname, Mail from Kunden
UNION All
Select Vorname, Nachname, Mail from KundenNew
 
-- Intersect Anweisung Schnittmenge --
Select Vorname, Nachname, Mail from Kunden
intersect
Select Vorname, Nachname, Mail from KundenNew
 
-- Except Anweisung Differenz --
Select Vorname, Nachname, Mail from Kunden
except
Select Vorname, Nachname, Mail from KundenNew