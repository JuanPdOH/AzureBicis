/*¿Cuál es el producto más caro?
*/
SELECT TOP 1 [Name], ListPrice
FROM SalesLT.Product
ORDER BY ListPrice DESC;