select FirstName, LastName, Country, CustomerId 
from Customer
where Customer.Country != 'USA'