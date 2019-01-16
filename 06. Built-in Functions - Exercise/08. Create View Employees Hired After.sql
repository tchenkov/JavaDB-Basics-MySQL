#	08. Create View Employees Hired After
#
# Write a SQL query to create view v_employees_hired_after_2000 with the
# first and the last name of all employees hired after 2000 year.

USE soft_uni;

CREATE VIEW v_employees_hired_after_2000 AS
	SELECT
		e.first_name,
        e.last_name
	FROM employees e
	WHERE YEAR(e.hire_date) > 2000;

SELECT *
FROM v_employees_hired_after_2000;