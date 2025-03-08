DECLARE @sqlstring NVARCHAR(1000)
DECLARE @Name NVARCHAR(50)
SET @Name = N'Engineering'
SET @sqlstring = N'SELECT * FROM AdventureWorks2022.HumanResources.Department WHERE Name = @Name'
EXEC sp_executesql @sqlstring, N'@Name NVARCHAR(50)', @Name = @Name



SELECT GETDATE() AS Today;
