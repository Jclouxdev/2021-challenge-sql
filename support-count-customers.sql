SELECT
	employees.FirstName || " " || UPPER(employees.LastName) FullName,
	COUNT(customers.CustomerId) NumberOfCustomers
FROM
	customers
	INNER JOIN employees ON customers.SupportRepId = employees.EmployeeId
WHERE
	employees.Title = 'Sales Support Agent'
GROUP BY
	customers.EmployeeId
ORDER BY
	NumberOfCustomers