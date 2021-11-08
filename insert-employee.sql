-- A new employee has just joined the team. You must insert its information into the database.

-- Here is the informations :

-- LastName : Doe
-- FirstName : John
-- Title : IT Developer
-- ReportsTo : His superior is Michael Mithell (the id of the employee)
-- BirthDate : 1999-03-18 00:00:00
-- HireDate : 2020-03-18 00:00:00
-- Address : 142 rue Sainte-Catherine
-- City : Bordeaux
-- State : NA
-- Country : France
-- PostalCode : 33000
-- Phone : +33 6 77 88 99 10
-- Fax : +33 5 68 89 90 90
-- Email : john.doe@gmail.com
-- Be careful with the dates. Dates must be in american format.

INSERT INTO employees (
  LastName, 
  FirstName, 
  Title, 
  ReportsTo, 
  BirthDate, 
  HireDate, 
  Address, 
  City, 
  State, 
  Country,
  PostalCode,
  Phone,
  Fax,
  Email
  ) 
VALUES (
  'Doe', --LastName
  'John', --FirstName
  'IT Developer', --Title
  '6', --ReportsTo
  '1999-03-18 00:00:00', --BirthDate
  '2020-03-18 00:00:00', --HireDate
  '142 rue Sainte-Catherine', --Address
  'Bordeaux', --City
  'NA', --State
  'France', --Country
  '33000', --PostalCode
  '+33 6 77 88 99 10', --Phone
  '+33 5 68 89 90 90', --Fax
  'john.doe@gmail.com' --Email
);