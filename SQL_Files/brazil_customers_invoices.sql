brazil_customers_invoices.sql

list of invoices of customers from Brazil
from customers: name
from invoicees: invoice Id, invoice date, billing country



SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Invoice
INNER JOIN Customer ON
Invoice.CustomerId=Customer.CustomerId
WHERE Country='Brazil'