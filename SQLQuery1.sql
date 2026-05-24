SELECT
    YEAR(h.OrderDate) AS OrderYear,
    MONTH(h.OrderDate) AS OrderMonth,
    h.TerritoryID,
    COUNT(DISTINCT h.SalesOrderID) AS OrderCount,
    SUM(h.TotalDue) AS TotalSales,
    AVG(h.TotalDue) AS AverageOrderValue
FROM Sales.SalesOrderHeader h
GROUP BY
    YEAR(h.OrderDate),
    MONTH(h.OrderDate),
    h.TerritoryID
ORDER BY
    OrderYear,
    OrderMonth,
    TerritoryID;