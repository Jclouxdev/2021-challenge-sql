SELECT
	employees.FirstName || " " || UPPER(employees.LastName) AS FullName,
	COUNT(customers.CustomerId) AS "NumberOfCustomers"
FROM
	customers
	INNER JOIN employees ON customers.SupportRepId = employees.EmployeeId
WHERE
	employees.Title = "Sales Support Agent"
GROUP BY
	customers.SupportRepId
ORDER BY
	NumberOfCustomers