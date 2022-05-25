line_item_track.sql

Provide a query that shows each Invoice line item, with the name of the track that was purchased.


SELECT InvoiceLine.*, Track.Name
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
