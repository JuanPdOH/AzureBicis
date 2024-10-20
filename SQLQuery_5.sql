/*¿Dónde se han vendido más productos?

SELECT 
    a.City,
    a.StateProvince,
    a.CountryRegion,
    SUM(od.OrderQty) AS TotalSales
FROM 
    SalesLT.SalesOrderHeader AS o
    INNER JOIN SalesLT.SalesOrderDetail AS od ON o.SalesOrderID = od.SalesOrderID
    INNER JOIN SalesLT.Product AS p ON od.ProductID = p.ProductID
    INNER JOIN SalesLT.CustomerAddress AS ca ON o.CustomerID = ca.CustomerID
    INNER JOIN SalesLT.Address AS a ON ca.AddressID = a.AddressID
GROUP BY 
    a.City,
    a.StateProvince,
    a.CountryRegion
ORDER BY 
    TotalSales DESC;