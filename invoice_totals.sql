select 
	Invoice.Total, Invoice.BillingCountry,
	Customer.FirstName + ' ' + Customer.LastName as CustomerName,
	Employee.FirstName + ' ' + Employee.LastName as SalesAgentName
from Invoice
	join Customer
		on Customer.CustomerId = Invoice.CustomerId
	join Employee
		on Customer.SupportRepId = Employee.EmployeeId
order by CustomerName