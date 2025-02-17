
SELECT count(*) from Production.Product

SELECT DaysToManufacture, SafetyStockLevel, avg(StandardCost) as avgragecost, SUM(StandardCost) as Total, COUNT(StandardCost) as cnt
FROM Production.Product
GROUP BY DaysToManufacture, SafetyStockLevel

;
-- pivot table with one row and five columns (3 is not in the source)
WITH cte_tbl AS (
SELECT 
      SafetyStockLevel,
     [0], [1], [2], [4]

FROM (
    select DaysToManufacture, StandardCost, SafetyStockLevel
    FROM Production.Product
) as src
PIVOT(
    count(StandardCost) FOR DaysToManufacture IN 
    ([0], [1], [2], [4])
) as pt
)

-- SELECT * FROM cte_tbl


SELECT DaysToManufacture, SafetyStockLevel, cnt
FROM (
    select SafetyStockLevel, [0], [1], [2], [4]
    from cte_tbl
) as pvt
UNPIVOT (
    cnt FOR DaysToManufacture in ([0], [1], [2], [4])
) as unpvt
where cnt > 0