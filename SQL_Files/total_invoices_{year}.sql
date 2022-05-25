total_invoices_{year}.sql

How many Invoices were there in 2009 and 2011?

SELECT COUNT(InvoiceDate)
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009' OR strftime('%Y', InvoiceDate) = '2011'