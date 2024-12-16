DECLARE @str varchar(max) = 'define view column name = table column name, hello'

DECLARE @startpos int
DECLARE @endpos int
SET @startpos = CHARINDEX('=', @str, CHARINDEX('view', @str)) + 1
SET @endpos = CHARINDEX(',', @str, CHARINDEX('=', @str, CHARINDEX('view', @str)))

SELECT @startpos, @endpos

SELECT REPLACE(SUBSTRING(@str, @startpos, (@endpos - @startpos)), ' ', ''),
       LTRIM(RTRIM(SUBSTRING(@str, @startpos, (@endpos - @startpos)))),
	   SUBSTRING(@str, @startpos, (@endpos - @startpos))
