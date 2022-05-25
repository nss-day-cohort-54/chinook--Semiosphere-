invoices_line_item_count.sql

Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice

SELECT Invoice.InvoiceId, COUNT(InvoiceLine.InvoiceLineId)
From Invoice
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.InvoiceId