#	06. Delete from Table
#
# Write a query to delete all employees from the “employees” table who
# are in department 2 or 1. Order the information by id.

USE hospital;

DELETE FROM employees
WHERE department_id IN(1, 2);

SELECT *
FROM employees
ORDER BY id;