/* Cuantas ventas tiene el producto más barato? Dime su nombre y precio.
*/
SELECT TOP 1 p.Name AS Product, p.ListPrice AS Price, COUNT(sod.SalesOrderDetailID) AS SalesCount
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
GROUP BY p.Name, p.ListPrice
ORDER BY p.ListPrice ASC, SalesCount DESC;