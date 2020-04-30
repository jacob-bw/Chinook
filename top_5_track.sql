select top(5) Track.Name, count(InvoiceLine.Quantity) as TotalTimesPurchased
	from InvoiceLine
	join Track
		on InvoiceLine.TrackId = Track.TrackId
	join Invoice
		on InvoiceLine.InvoiceId = Invoice.InvoiceId
group by Track.Name
order by TotalTimesPurchased desc