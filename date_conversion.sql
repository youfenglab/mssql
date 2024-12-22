
/*
In SQL Server, you can convert a numeric date (in formats like YYYYMMDD) 
to a proper DATE or DATETIME using the CONVERT or CAST functions. 
Here's an example:
*/
DECLARE @NumericDate INT = 20241222; -- Numeric date in YYYYMMDD format
SELECT CONVERT(DATE, CAST(@NumericDate AS CHAR(8)), 112) AS DATE

/*
To convert a DATE or DATETIME back to a numeric format (e.g., YYYYMMDD) 
in SQL Server, you can use the CONVERT function with the appropriate 
style code (112 for YYYYMMDD).
*/
DECLARE @ProperDate DATE = '2024-12-22'; -- Proper date
SELECT CONVERT(VARCHAR(8), @ProperDate, 112) AS NumericDateString  -- as string
, CAST(CONVERT(VARCHAR(8), @ProperDate, 112) AS INT) AS NumericDate  -- as numeric
;

DECLARE @DateTimeValue DATETIME = '2024-12-22 10:23:29.543'; -- Example DATETIME
SELECT CAST(CONVERT(VARCHAR(8), @DateTimeValue, 112) AS INT) AS NumericDate;
