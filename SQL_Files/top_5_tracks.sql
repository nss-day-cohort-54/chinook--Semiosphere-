top_5_tracks.sql

Provide a query that shows the top 5 most purchased tracks over all

SELECT Track.Name, COUNT(Track.TrackId) AS TrackCount
FROM Track
Join InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Track.TrackId
ORDER BY TrackCount DESC
LIMIT 5