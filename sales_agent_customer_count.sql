select 	Employee.FirstName, Employee.LastName, Employee.EmployeeId, count(*) as TotalCustomers
from Customer
	join Employee
		on Customer.SupportRepId = Employee.EmployeeId
group by EmployeeId, Employee.FirstName, Employee.LastName