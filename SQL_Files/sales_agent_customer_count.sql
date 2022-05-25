sales_agent_customer_count.sql


Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
Employee full name
Total number of customers assigned to each employee (even if it's zero)

SELECT Employee.FirstName, Employee.LastName,
CASE WHEN  COUNT(Customer.SupportRepId) ISNULL THEN 0
WHEN COUNT(Customer.SupportRepId) >= 0 THEN COUNT(Customer.SupportRepId) END AS CustomerCount
FROM Employee
LEFT JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY EmployeeId
