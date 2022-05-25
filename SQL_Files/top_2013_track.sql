top_2013_track.sql

Provide a query that shows the most purchased track(s) of 2013.


WITH KeySum AS (
SELECT Invoice.InvoiceDate, COUNT(Track.Name) AS TrackCount, Track.Name
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE strftime('%Y', Invoice.InvoiceDate) = '2013'
GROUP BY Track.Name
)
SELECT Name
FROM KeySum
WHERE TrackCount = (SELECT MAX(TrackCount)
FROM KeySum)