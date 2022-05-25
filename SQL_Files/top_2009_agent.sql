top_2009_agent.sql

Which sales agent made the most in sales in 2009?

need employees whose title is sales rep


WITH KeySum AS (
SELECT ROUND(SUM(Invoice.Total), 2) AS TotalSales, Employee.FirstName, Employee.LastName
FROM Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Employee.Title = 'Sales Support Agent'
AND strftime('%Y', Invoice.InvoiceDate) = '2009'
GROUP BY Employee.FirstName, Employee.LastName
)
SELECT FirstName, LastName 
FROM KeySum
WHERE TotalSales = (SELECT MAX(TotalSales)
FROM KeySum)