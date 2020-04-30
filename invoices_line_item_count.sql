 select Invoice.*, count(InvoiceLine.InvoiceId) as InvoiceLineitems
 from InvoiceLine
 	join Invoice
		on Invoice.InvoiceId = InvoiceLine.InvoiceId
group by Invoice.InvoiceId, CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingCountry, BillingState, BillingPostalCode, Total