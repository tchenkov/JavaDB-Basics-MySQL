#	19. Last 7 Hired Employees
#
# Write a SQL query to find last 7 hired employees. Select their first,
# last name and their hire date.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name,
    e.hire_date
FROM employees e
ORDER BY hire_date DESC
LIMIT 7;