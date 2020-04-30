select top(1) MediaType.Name as RecordFormat, count(*) as AlbumsSold
	from Track
		join MediaType
			on Track.MediaTypeId = MediaType.MediaTypeId
		join InvoiceLine
			on InvoiceLine.TrackId = Track.TrackId
group by MediaType.Name
order by AlbumsSold desc