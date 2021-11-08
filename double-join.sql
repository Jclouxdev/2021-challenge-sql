SELECT DISTINCT tracks.Name AS TrackName, playlists.Name AS PlaylistName
FROM tracks
INNER JOIN playlist_track ON tracks.TrackId = playlist_track.TrackId
INNER JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId
WHERE playlists.Name = 'TV Shows'
LIMIT 100;