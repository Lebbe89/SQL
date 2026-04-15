-- wir arbeiten mit dem Designer
-- Aggregate (SUM, MIN, MAX, AVG etc.)
use Northwind

/* Designer --*/
SELECT     Orders.EmployeeID, Employees.FirstName + N' ' + Employees.LastName AS Verkäufer, SUM(ROUND([Order Details].UnitPrice * [Order Details].Quantity - [Order Details].UnitPrice * [Order Details].Quantity * [Order Details].Discount, 2)) AS ZeilenUmsatz, CONVERT(nvarchar, 
                  DATEPART(YEAR, Orders.OrderDate), 104) + N' ' + DATENAME(Month, Orders.OrderDate) AS JahrMonat
FROM        Orders INNER JOIN
                  Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN
                  [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY Orders.EmployeeID, Employees.FirstName + N' ' + Employees.LastName, CONVERT(nvarchar, DATEPART(YEAR, Orders.OrderDate), 104) + N' ' + DATENAME(Month, Orders.OrderDate), DATEPART(month, Orders.OrderDate), DATEPART(year, Orders.OrderDate)
HAVING     (Orders.EmployeeID = 8)
ORDER BY DATEPART(year, Orders.OrderDate), DATEPART(month, Orders.OrderDate) DESC