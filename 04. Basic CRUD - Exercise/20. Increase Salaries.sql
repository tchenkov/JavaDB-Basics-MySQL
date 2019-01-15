#	20. Increase Salaries
#
# Write a SQL query to increase salaries of all employees that are in
# the Engineering, Tool Design, Marketing or Information Services
# department by 12%. Then select Salaries column from the Employees table.

USE soft_uni;

UPDATE employees e
	SET e.salary = e.salary * 1.12
    WHERE e.department_id IN(1, 2, 4 , 11);
    
SELECT e.salary
FROM employees e;