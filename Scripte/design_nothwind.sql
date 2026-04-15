use Northwind
SELECT        Employees.EmployeeID, Employees.FirstName + N' ' + Employees.LastName AS Name, SUM(ROUND(([Order Details].UnitPrice * [Order Details].Quantity) * (1 - [Order Details].Discount), 2)) AS Line, DATEPART(Year, 
                         Orders.OrderDate) AS Jahr, DATENAME(Month, Orders.OrderDate) AS Monat
FROM            Employees INNER JOIN
                         Orders ON Employees.EmployeeID = Orders.EmployeeID INNER JOIN
                         [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY Employees.EmployeeID, Employees.FirstName + N' ' + Employees.LastName, DATEPART(Month, Orders.OrderDate), DATEPART(Year, Orders.OrderDate), DATENAME(Month, Orders.OrderDate)
HAVING        (Employees.EmployeeID = 4)
ORDER BY Jahr DESC, DATEPART(Month, Orders.OrderDate)
--Umsätze einem bestimmten Verkäufer


--Mengenoperatoren bzw. Aggregatfunktion Jahr und Monat

--Umsätze 
