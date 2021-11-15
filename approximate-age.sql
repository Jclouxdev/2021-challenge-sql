SELECT
	FirstName,
	LastName,
	strftime ('%Y',
		HireDate) - strftime ('%Y',
		BirthDate) ApproximateAge
FROM
	employees
ORDER BY
	ApproximateAge