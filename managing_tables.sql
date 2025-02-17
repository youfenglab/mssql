USE AdventureWorks2016
GO

/* Create a table */
CREATE TABLE dbo.Person (
    PersonID INT IDENTITY CONSTRAINT PK_Person PRIMARY KEY CLUSTERED
    , BusinessEntityID INT NOT NULL CONSTRAINT FK_Person REFERENCES Person.businessentity(BusinessEntityID)
    , First_Name VARCHAR(50) NOT NULL
    )

ALTER TABLE dbo.Person ADD Last_Name VARCHAR(50) NULL

SELECT *
FROM dbo.Person

ALTER TABLE dbo.person ADD IsActive BIT NOT NULL CONSTRAINT DF_Person_IsActive DEFAULT(0)



INSERT INTO [dbo].[Person] (
    -- Columns to insert data into
    [BusinessEntityID]
    , [First_Name]
    , [Last_Name]
    )
VALUES (
    -- First row: values for the columns in the list above
    - 1
    , 'Jack'
    , 'Ma'
    )
    -- Add more rows here
GO


ALTER TABLE dbo.person
add CONSTRAINT PK_Test PRIMARY KEY CLUSTERED (BusinessEntityID, First_Name)

EXEC sp_help 'dbo.person'


