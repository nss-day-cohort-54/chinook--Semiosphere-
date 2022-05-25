top_country.sql

Which country's customers spent the most?



WITH KeySum AS (
SELECT SUM(Invoice.Total) AS TotalSales, Customer.Country
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.Country
)
SELECT Country
FROM KeySum
WHERE TotalSales = (SELECT MAX(TotalSales)
FROM KeySum)