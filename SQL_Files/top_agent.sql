top_agent.sql

Which sales agent made the most in sales over all?


WITH KeySum AS (
SELECT ROUND(SUM(Invoice.Total), 2) AS TotalSales, Employee.FirstName, Employee.LastName
FROM Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Employee.Title = 'Sales Support Agent'
GROUP BY Employee.FirstName, Employee.LastName
)
SELECT FirstName, LastName 
FROM KeySum
WHERE TotalSales = (SELECT MAX(TotalSales)
FROM KeySum)