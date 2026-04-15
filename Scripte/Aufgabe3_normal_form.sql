-- Aufgabe 1 heißt Werte im Feld ContactName trennen
-- wir brauchen 2 neue Felder z. B. Firstname und Lastname
use Northwind
 
alter table Customers add Firstname nvarchar (30), Lastname nvarchar (30)
 
-- Trennen vor und nachname
Select ContactName from Customers
 
select ContactName, Charindex(' ',ContactName)from Customers
-- Firstname ok
Select left(ContactName,Charindex(' ',ContactName)) from Customers
-- Lastname ok
Select SUBSTRING(ContactName,Charindex(' ',ContactName), 50) from Customers
 
-- Update ok 
Update Customers SET Firstname = (left(ContactName,Charindex(' ',ContactName)))
 
Update Customers SET Lastname = SUBSTRING(ContactName,Charindex(' ',ContactName), 50)
 
-- Entfernen vom ContactName
alter Table Customers drop column ContactName
 
-- Aufgabe 2
-- Neue Tabelle Felder postalcode, City, Region, country
-- aber keine doppelten Einträge Umsätzung mit Distinct oder der Group Anweisung
SELECT PostalCode, City, Region, Country
INTO PostalCode
FROM Customers
GROUP BY PostalCode, City, Region, Country
-- Fehlerbeseitigung für fehlende PLZ
Update Customers SET PostalCode = '901' Where City = 'Cork'

--Wir wollen ein neues Feld haben, das soll später ein Fremdschüssel sein und dem Fremdschlüssel wollen wir
--Region, Posttalcode, City, Country == CountryID
--für diese Felder möchten wir eine neue Tabelle ohne Dupletten!!!

--Erstelle neue Tabelle
-- INSERT die Daten da rein

Alter Table postalcode add id int primary key Identity(1,1)

--Das Feld in der Customers Tabelle muss nun der ID aus PostalCode Tabelle gefüllt Update
update Customers 
set PostalCodeID = PostalCode.ID 
where
customers.country = postalcode.country AND customers.postalcode = postalcode.postalcode

--Als Nächstes benötigen wir in der Customers Tabelle einen fremdschlüssel mit referenz aus PostalCode Tabelle 

Alter table Customers add PostalCodeID int


UPDATE       Customers
SET                PostalCodeID = PostalCode.id
FROM            Customers INNER JOIN
                         PostalCode ON Customers.PostalCode = PostalCode.PostalCode

Select * from postalcode where id =31

--Aufgabe 3 Erstellen einer ID in der Customers Tabelle(PS)

alter table customers Add ID int Identity(1,1)

--Aufgabe 4 
--CustomID in orders anlegen, anschließend mirgieren der neuen ID aus Customers

Alter Table Orders add CustomID int



UPDATE       Orders
SET                CustomID = Customers.ID
FROM            Orders INNER JOIN
                         Customers ON Orders.CustomerID = Customers.CustomerID

Select * from customers where id = 7
