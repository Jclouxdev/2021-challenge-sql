select artists.Name, count(albums.ArtistId) NbAlbums,
	case
		when count(albums.ArtistId) = 1 then 'Unproductive'
		when count(albums.ArtistId) > 1 and count(albums.ArtistId) < 10 then 'Productive'
		when count(albums.ArtistId) >= 10 then 'Very Productive'
	end 'IsProductive'
from artists
inner join albums on artists.ArtistId = albums.ArtistId
group by albums.ArtistId