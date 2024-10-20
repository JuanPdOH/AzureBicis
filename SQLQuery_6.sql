/*¿Qué productos se vendieron en Londres?
*/
SELECT p.Name AS ProductName
FROM SalesLT.Product p
JOIN SalesLT.SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN SalesLT.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
JOIN SalesLT.Address a ON soh.ShipToAddressID = a.AddressID
WHERE a.City = 'London';