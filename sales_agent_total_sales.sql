select Employee.EmployeeId, Employee.FirstName + ' ' + Employee.LastName as SalesAgentName, sum(Invoice.Total) as totalSales
from Invoice
	join Customer
		on Customer.CustomerId = Invoice.CustomerId
	join Employee
		on Customer.SupportRepId = Employee.EmployeeId
group by Employee.EmployeeId, Employee.FirstName, Employee.LastName
