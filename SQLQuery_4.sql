/* ¿En cuántos países vendemos productos y cuánto por país?
*/
SELECT COUNT(DISTINCT CountryRegion) AS NumberOfCountries
FROM SalesLT.Address

-- Step 2: Find the country where we sell the most products
SELECT TOP 1000 CountryRegion, COUNT(*) AS TotalSales
FROM SalesLT.Address
GROUP BY CountryRegion
ORDER BY TotalSales DESC;