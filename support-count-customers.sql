SELECT
	employees.FirstName || " " || UPPER(employees.LastName) as FullName,
	COUNT(customers.CustomerId) as NumberOfCustomers
FROM
	customers
	INNER JOIN employees ON customers.SupportRepId = employees.EmployeeId
WHERE
	employees.Title = 'Sales Support Agent'
GROUP BY
	customers.SupportRepId
ORDER BY
	NumberOfCustomers