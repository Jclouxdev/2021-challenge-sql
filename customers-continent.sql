SELECT
	FirstName,
	LastName,
	Country,
	CASE WHEN Country = 'Brazil'
		OR Country = 'Canada'
		OR Country = 'USA'
		OR Country = 'Chile'
		OR Country = 'Argentina' THEN
		'America'
	WHEN Country = 'Germany'
		OR Country = 'Norway'
		OR Country = 'Czech Republic'
		OR Country = 'Belgium'
		OR Country = 'Denmark'
		OR Country = 'Portugal'
		OR Country = 'United Kingdom'
		OR Country = 'Sweden'
		OR Country = 'Spain'
		OR Country = 'Poland'
		OR Country = 'Netherlands'
		OR Country = 'Italy'
		OR Country = 'Ireland'
		OR Country = 'Hungary'
		OR Country = 'France'
		OR Country = 'Finland'
		OR Country = 'Austria' THEN
		'Europe'
	WHEN Country = 'India'
		OR Country = 'India' THEN
		'Asia'
	WHEN Country = 'Australia' THEN
		'Oceania'
	END 'Continent'
FROM
	customers