select artists.Name as ArtistName, albums.Title as AlbumName, tracks.Name as TrackName, round(tracks.Bytes/1000000.0, 2) as MegaBytes
from albums
inner join tracks on albums.AlbumId = tracks.AlbumId
inner join artists on albums.ArtistId = artists.ArtistId
where artists.ArtistId = (
	SELECT ArtistId
	from artists
	where Name = 'Green Day' AND AlbumName = 'American Idiot'
)