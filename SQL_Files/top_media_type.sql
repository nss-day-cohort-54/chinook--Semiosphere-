top_media_type.sql

Provide a query that shows the most purchased Media Type.

WITH KeySum AS (
SELECT MediaType.Name AS MediaTypeName, COUNT(InvoiceLine.Quantity) AS NumSold
FROM MediaType
JOIN Track ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY MediaType.MediaTypeId
)
SELECT NumSold, MediaTypeName
FROM KeySum
WHERE NumSold = (SELECT MAX(NumSold)
FROM KeySum)