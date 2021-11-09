SELECT LastName, FirstName
FROM customers
WHERE LENGTH(LastName) > 5 AND LENGTH(FirstName) > 5
ORDER BY LastName ASC