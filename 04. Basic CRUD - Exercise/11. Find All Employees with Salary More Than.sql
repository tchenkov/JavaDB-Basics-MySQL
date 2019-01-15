#	11. Find All Employees with Salary More Than
#
# Write a SQL query to find first name, last name and salary of those employees
# who has salary more than 50000. Order them in decreasing order by salary.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name,
    e.salary
FROM employees e
WHERE e.salary > 50000
ORDER BY e.salary DESC;