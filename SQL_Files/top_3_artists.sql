top_3_artists.sql

Provide a query that shows the top 3 best selling artists.

SELECT Artist.Name, COUNT(Track.TrackId) AS TrackCount
FROM Artist
JOIN Album ON Album.ArtistId = Artist.ArtistId
JOIN Track ON Track.AlbumId = Album.AlbumId
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Artist.ArtistId
ORDER BY TrackCount DESC
LIMIT 3