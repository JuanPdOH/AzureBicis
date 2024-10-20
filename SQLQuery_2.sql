/* Producto más vendido
*/
SELECT TOP 1 
    p.Name AS ProductName,
    SUM(od.OrderQty) AS TotalSales
FROM 
    SalesLT.Product AS p
JOIN 
    SalesLT.SalesOrderDetail AS od ON p.ProductID = od.ProductID
GROUP BY 
    p.Name
ORDER BY 
    TotalSales DESC;