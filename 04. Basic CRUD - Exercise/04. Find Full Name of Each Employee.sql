#	04. Find Full Name of Each Employee
#
# Write SQL query to find the first, middle and last name of each
# employee. Sort the information by id.

USE soft_uni;

SELECT e.first_name, e.middle_name, e.last_name
FROM employees e
ORDER BY employee_id