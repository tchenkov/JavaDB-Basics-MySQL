#	03. Find First Names of All Employes
#
# Write a SQL query to find the first names of all employees in the departments
# with ID 3 or 10 and whose hire year is between 1995 and 2005 inclusively.
# Order the information by id.

USE soft_uni;

SELECT e.first_name
FROM employees e
WHERE
	e.department_id IN(3, 10)
	AND
    YEAR(e.hire_date) BETWEEN 1995 AND 2005
ORDER BY e.employee_id;