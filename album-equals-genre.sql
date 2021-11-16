SELECT *
FROM albums
WHERE albums.Title IN ( 
select genres.Name
from genres
)