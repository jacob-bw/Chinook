 select InvoiceId, count(*) as TotalNumberOfLineItems
 from InvoiceLine
 group by InvoiceId