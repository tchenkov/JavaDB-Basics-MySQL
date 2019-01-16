#	01. Find Names of All Employees by First Name
#
# Write a SQL query to find first and last names of all employees whose
# first name starts with “Sa” (case insensitively). Order the information by id.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name
FROM employees e
WHERE e.first_name LIKE 'sa%'
ORDER BY e.employee_id;