invoice_totals.sql

Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
Invoice Total
Customer Name
Customer Country
Sale Agent full name

SELECT Employee.FirstName, Employee.LastName, Customer.FirstName, Customer.LastName, Customer.Country, Invoice.Total
FROM Employee
INNER JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Employee.Title = 'Sales Support Agent'
