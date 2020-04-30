/* 15 - Playlist Track Count */

/* shows full playlist w/ tracks

select 
	Track.*,
	Playlist.*,
	PlaylistTrack.*
from Track
	join PlaylistTrack
		on PlaylistTrack.TrackId = Track.TrackId
	join Playlist
		on Playlist.PlaylistId = PlaylistTrack.PlaylistId
*/

select Playlist.Name, count(*) as NumberOfTracks
from PlaylistTrack
	join Playlist
		on Playlist.PlaylistId = PlaylistTrack.PlaylistId
group by Playlist.Name