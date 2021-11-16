select *
from tracks
where tracks.AlbumId in (
	SELECT albums.AlbumId
	from albums
	where albums.Title = 'Facelift'
)