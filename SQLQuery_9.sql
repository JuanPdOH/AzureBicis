/*¿En que país se ha vendido más y cuánto?
*/
SELECT TOP 1 a.CountryRegion, SUM(d.LineTotal) AS TotalEarnings
FROM SalesLT.SalesOrderHeader AS h
JOIN SalesLT.CustomerAddress AS ca ON h.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a ON ca.AddressID = a.AddressID
JOIN SalesLT.SalesOrderDetail AS d ON h.SalesOrderID = d.SalesOrderID
GROUP BY a.CountryRegion
ORDER BY TotalEarnings DESC;