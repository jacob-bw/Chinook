select BillingCountry, sum(Total) as TotalCountrySales
 from Invoice
 group by Invoice.BillingCountry