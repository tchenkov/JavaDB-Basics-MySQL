#	20. Increase Employees Salary
#
# Use soft_uni database and increase the salary of all employees by 10%.
# Select only salary column from the employees table.

USE soft_uni;

UPDATE employees
SET salary = salary * 1.1;

SELECT salary
FROM employees;