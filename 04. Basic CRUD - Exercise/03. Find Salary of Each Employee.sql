#	03. Find Salary of Each Employee
#
# Write SQL query to find the first name, last name and salary of each
# employee. Sort the information by id.

USE soft_uni;

SELECT e.first_name, e.last_name, e.salary
FROM employees e
ORDER BY employee_id;