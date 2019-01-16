#	04. Find All Employees Except Engineers
#
# Write a SQL query to find the first and last names of all employees whose
# job titles does not contain “engineer”. Order the information by id.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name
FROM employees e
WHERE e.job_title NOT LIKE '%engineer%'
ORDER BY e.employee_id;