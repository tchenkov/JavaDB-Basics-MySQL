#	05. Select Employees by Multiple Filters
#
# Write a query to retrieve information about employees, who are in
# department 4 and have salary higher or equal to 1600. Order the
# information by id.

USE hospital;

SELECT *
FROM employees
WHERE department_id = 4 AND salary >= 1600
ORDER BY id;