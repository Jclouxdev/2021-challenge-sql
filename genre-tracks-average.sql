SELECT genres.Name, AVG(tracks.Milliseconds) AS AverageDuration
FROM tracks
INNER JOIN genres ON tracks.GenreId = genres.GenreId
GROUP BY genres.GenreId
ORDER BY AverageDuration DESC