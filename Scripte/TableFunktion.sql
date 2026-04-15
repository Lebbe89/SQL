create Function getEmployeesByDepartment(@Country nvarchar(20))
Returns Table
as
Return(
	Select * from Employees Where Country = @Country
);


Select LastName, FirstName, Title from dbo.getEmployeesByDepartment('USA')


Select LastName, FirstName, Title, dbo.CalculateAge(BirthDate) as 'Age'  From GetEmployeesByDepartment('USA')
