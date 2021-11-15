select FirstName || ' ' || upper(LastName) as FullName, SUM(invoices.Total) as AllInvoices
from customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
group by invoices.CustomerId
HAVING AllInvoices > 38
ORDER BY FullName ASC