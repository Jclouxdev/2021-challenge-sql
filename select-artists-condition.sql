SELECT Name
FROM artists
INNER JOIN albums ON artists.ArtistId = albums.ArtistId
GROUP BY artists.ArtistId
HAVING COUNT(artists.ArtistId) >= 4