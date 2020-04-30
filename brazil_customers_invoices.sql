select Customer.FirstName + ' ' + Customer.LastName as FullName, InvoiceId, InvoiceDate, BillingCountry
from Invoice
	join Customer
		on Invoice.CustomerId = Customer.CustomerId
where BillingCountry like 'Brazil'