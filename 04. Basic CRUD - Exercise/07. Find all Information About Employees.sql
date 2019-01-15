#	07. Find all Information About Employees
#
# Write a SQL query to find all information about the employees whose job
# title is "Sales Representative". Sort the information by id.

USE soft_uni;

SELECT *
FROM employees e
WHERE e.job_title = 'Sales Representative'
ORDER BY e.employee_id;