sales_agent_total_sales.sql

Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)

SELECT ROUND(SUM(Invoice.Total), 2) AS TotalSales, Employee.FirstName, Employee.LastName
FROM Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Employee.Title = 'Sales Support Agent'
GROUP BY Employee.FirstName, Employee.LastName