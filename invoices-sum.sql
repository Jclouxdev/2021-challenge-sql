-- You have to get invoices information about invoices from client Tim Goyer. 
-- You must calculate the total sum of all his invoices 
-- with an alias AllInvoicesTotalPrice.

SELECT SUM("Total") AllInvoicesTotalPrice 
FROM invoices
WHERE CustomerId = 19