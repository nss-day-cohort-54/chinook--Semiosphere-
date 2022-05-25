country_invoices.sql

Provide a query that shows the total number of invoices per country.

SELECT COUNT(InvoiceId), BillingCountry
From Invoice
GROUP BY BillingCountry


