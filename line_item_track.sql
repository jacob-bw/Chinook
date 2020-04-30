select 
	InvoiceLine.InvoiceId,
	Track.Name
from InvoiceLine
	join Track
		on Track.TrackId = InvoiceLine.TrackId
order by InvoiceId