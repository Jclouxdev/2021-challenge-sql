SELECT DISTINCT genres.Name, COUNT(tracks.GenreId) AS NumberOfTracks
FROM tracks
INNER JOIN genres ON genres.GenreId = tracks.GenreId
GROUP BY tracks.GenreId
ORDER BY genres.Name ASC