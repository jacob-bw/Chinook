select count(*) as InvoicesFrom2009
from Invoice
 where Invoice.InvoiceDate between '2009-01-01' and '2009-12-31'

select count(*) as InvoicesFrom2011
from Invoice
 where Invoice.InvoiceDate between '2011-01-01' and '2011-12-31'