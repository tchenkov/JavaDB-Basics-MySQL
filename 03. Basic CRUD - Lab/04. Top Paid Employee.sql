#	04. Top Paid Employee
#
# Write a query to create a view that selects all information about the
# top paid employee from the “employees” table in the hospital database.

USE hospital;

CREATE VIEW v_top_payed_employee AS
	SELECT *
	FROM employees
    ORDER BY salary DESC
    LIMIT 1;
    
SELECT *
FROM v_top_payed_employee;