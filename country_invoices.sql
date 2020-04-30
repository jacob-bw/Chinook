select BillingCountry, count(*)
 from Invoice
 group by Invoice.BillingCountry