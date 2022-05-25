total_sales_{year}.sql

What are the respective total sales for each of those years?


SELECT SUM(Total)
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009' OR strftime('%Y', InvoiceDate) = '2011'