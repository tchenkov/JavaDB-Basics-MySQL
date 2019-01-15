#	12. Find 5 Best Paid Employees
#
# Write SQL query to find first and last names about 5 best paid Employees
# ordered descending by their salary.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name
FROM employees e
ORDER BY e.salary DESC
LIMIT 5;