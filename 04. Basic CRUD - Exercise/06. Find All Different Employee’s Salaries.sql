#	06. Find All Different Employee’s Salaries
#
# Write a SQL query to find all different employee’s salaries. Show only
# the salaries. Sort the information by id.

USE soft_uni;

SELECT DISTINCT e.salary
FROM employees e
ORDER BY employee_id;