/* ¿Cuál es el producto más caro vendido?
*/
SELECT TOP 1 p.Name AS 'Product Name', p.ListPrice AS 'Price', COUNT(sod.SalesOrderDetailID) AS 'Count of Sales'
FROM SalesLT.Product p
JOIN SalesLT.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.Name, p.ListPrice
ORDER BY p.ListPrice DESC;