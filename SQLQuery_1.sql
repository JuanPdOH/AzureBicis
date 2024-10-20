/*¿Qué productos no se ha vendido ninguna unidad y qué precio tienen, ordena lo por precio descendente y  su indice?
*/
SELECT p.ProductID, p.Name, p.ListPrice
FROM SalesLT.Product p
LEFT JOIN SalesLT.SalesOrderDetail sod ON p.ProductID = sod.ProductID
WHERE sod.ProductID IS NULL
ORDER BY p.ListPrice DESC;