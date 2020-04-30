select 
	Invoice.*,
	Employee.FirstName + ' ' + Employee.LastName as SalesAgentName
from Invoice
	join Customer
		on Customer.CustomerId = Invoice.CustomerId
	join Employee
		on Customer.SupportRepId = Employee.EmployeeId
