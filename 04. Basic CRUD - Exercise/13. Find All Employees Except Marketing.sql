#	13. Find All Employees Except Marketing
#
# Write a SQL query to find the first and last names of all employees
# whose department ID is different from 4.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name
FROM employees e
WHERE e.department_id <> 4;