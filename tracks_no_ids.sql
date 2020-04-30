select
	Track.Name as TrackName,
	Album.Title as AlbumName,
	Artist.Name as ArtistName,
	Genre.Name as Genre,
	MediaType.Name as MediaFormat
from Track
	join Album
		on Track.AlbumId = Album.AlbumId
	join MediaType
		on Track.MediaTypeId = MediaType.MediaTypeId
	join Genre
		on Genre.GenreId = Track.GenreId
	join Artist
		on Artist.ArtistId = Album.ArtistId
order by ArtistName