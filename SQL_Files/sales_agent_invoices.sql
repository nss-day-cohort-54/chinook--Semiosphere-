sales_agent_invoices.sql

Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
Sales Agent's full name
Invoice ID

SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Employee
INNER JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId