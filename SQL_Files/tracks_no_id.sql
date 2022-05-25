tracks_no_id.sql

Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre

SELECT Album.Title AS AlbumTitle, MediaType.Name AS MediaTypeName, Genre.Name AS GenreName
FROM Track
JOIN Album On Track.AlbumId = Album.AlbumId
JOIN MediaType On Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre On Track.GenreId = Genre.GenreId 