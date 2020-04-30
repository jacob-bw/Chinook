select top(1) Invoice.BillingCountry, sum(Invoice.Total) as TotalCountrySales
 from Invoice
 group by Invoice.BillingCountry
 order by TotalCountrySales desc
