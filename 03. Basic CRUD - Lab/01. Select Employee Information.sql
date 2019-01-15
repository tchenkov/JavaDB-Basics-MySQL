#	01. Select Employee Information
#
# Write a query to select all employees and retrieve information about
# their id, first_name, last_name and job_title ordered by id.

USE hospital;

SELECT id, first_name, last_name, job_title
FROM employees
ORDER BY id;