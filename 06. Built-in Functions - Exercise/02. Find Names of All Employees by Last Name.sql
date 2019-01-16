#	02. Find Names of All Employees by Last Name
#
# Write a SQL query to find first and last names of all employees whose last
# name contains “ei” (case insensitively). Order the information by id.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name
FROM employees e
WHERE e.last_name LIKE '%ei%'
ORDER BY e.employee_id;