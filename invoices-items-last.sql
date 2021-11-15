select Name
from tracks
inner join invoice_items on tracks.TrackId = invoice_items.TrackId
where invoice_items.InvoiceId = (
	select InvoiceId
	from invoices
	order by InvoiceDate DESC
	limit 1
)