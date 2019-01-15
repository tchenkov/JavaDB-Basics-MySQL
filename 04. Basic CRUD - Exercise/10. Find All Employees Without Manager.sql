#	10. Find All Employees Without Manager
#
# Write a SQL query to find first and last names about those employees
# that does not have a manager.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name
FROM employees e
WHERE e.manager_id IS NULL;