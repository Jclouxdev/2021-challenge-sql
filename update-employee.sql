-- Employee Robert King just got a promotion !
-- You must update his function in the table employees.

-- His new job Title : IT Manager
-- His new superior : Adams Andrew

UPDATE employees
SET Title = 'IT Manager', ReportsTo = '1'
WHERE "EmployeeId" = 7;