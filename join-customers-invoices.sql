SELECT FirstName, LastName, Company, Total AS InvoiceTotalPrice
FROM customers
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE Company NOT NULL;