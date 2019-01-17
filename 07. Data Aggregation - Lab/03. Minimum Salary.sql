#	03. Minimum Salary
#
# Write a query to retrieve information about the departments grouped by
# department_id with minumum salary higher than 800. Round the salary result
# to two digits after the decimal point.

USE restaurant;

SELECT
	e.department_id,
    round(min(e.salary), 2) `Min Salary`
FROM employees e
GROUP BY e.department_id
HAVING `Min Salary` > 800;