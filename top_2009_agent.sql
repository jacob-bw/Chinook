select TOP(1) Employee.EmployeeId, Employee.FirstName + ' ' + Employee.LastName as SalesAgentName, sum(Invoice.Total) as totalSales, count(*) as InvoicesFrom2009
from Invoice
	join Customer
		on Customer.CustomerId = Invoice.CustomerId
	join Employee
		on Customer.SupportRepId = Employee.EmployeeId
		where Invoice.InvoiceDate between '2009-01-01' and '2009-12-31'
group by Employee.EmployeeId, Employee.FirstName, Employee.LastName
order by totalSales desc