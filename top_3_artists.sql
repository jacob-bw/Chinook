select top(3) Artist.Name, count(*) as TracksSold
	from InvoiceLine
	join Track
		on InvoiceLine.TrackId = Track.TrackId
	join Album
		on Album.AlbumId = Track.AlbumId
	join Artist
		on Album.ArtistId = Artist.ArtistId
	join Invoice
		on InvoiceLine.InvoiceId = Invoice.InvoiceId
group by Artist.Name
order by TracksSold desc