#	08. Find Names of All Employees by Salary in Range
#
# Write a SQL query to find the first name, last name and job title of all
# employees whose salary is in the range [20000, 30000]. Sort the information by id.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name,
    e.job_title JobTitle
FROM employees e
WHERE e.salary BETWEEN 20000 AND 30000
ORDER BY e.employee_id;