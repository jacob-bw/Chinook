/* doesn't account for ties for 1st place */
select top(1) Track.Name, count(InvoiceLine.Quantity) as TotalTimesPurchased
	from InvoiceLine
	join Track
		on InvoiceLine.TrackId = Track.TrackId
	join Invoice
		on InvoiceLine.InvoiceId = Invoice.InvoiceId
where Invoice.InvoiceDate between '2013-01-01' and '2013-12-31'
group by Track.Name
order by TotalTimesPurchased desc