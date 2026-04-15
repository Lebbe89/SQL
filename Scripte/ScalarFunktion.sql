CREATE FUNCTION CalculateAge (@BirthDate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT;
 
    -- Berechne das Alter in Jahren
    SET @Age = DATEDIFF(YEAR, @BirthDate, GETDATE());
 
    -- Überprüfen, ob der Geburtstag in diesem Jahr bereits war; wenn nicht, ein Jahr abziehen
    IF (MONTH(@BirthDate) > MONTH(GETDATE())) 
       OR (MONTH(@BirthDate) = MONTH(GETDATE()) AND DAY(@BirthDate) > DAY(GETDATE()))
    BEGIN
        SET @Age = @Age - 1;
    END;
 
    RETURN @Age;
END;



select FirstName, LastName, dbo.CalculateAge(BirthDate) as 'Age' from Employees

select dbo.CalculateAge('1989-04-26') as Age