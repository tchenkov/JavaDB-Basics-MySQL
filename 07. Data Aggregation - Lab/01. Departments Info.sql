#	01. Departments Info
#
# Write a query to count the number of employees in each department by id.
# Order the information by deparment_id, then by employees count.

USE restaurant;

SELECT
	e.department_id,
    count(e.id) `Number of employees`
FROM employees e
GROUP BY e.department_id
ORDER BY e.department_id;