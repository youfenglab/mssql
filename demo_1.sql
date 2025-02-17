DECLARE @sqlstring NVARCHAR(1000)
DECLARE @Name NVARCHAR(50)
SET @sqlstring = N'SELECT * FROM AdventureWorks2022.HumanResources.Department
Where Name = @Name'

EXECUTE sp_execut