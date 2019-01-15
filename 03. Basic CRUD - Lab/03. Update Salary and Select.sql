#	03. Update Salary and Select
#
# Update all employees salaries whose job_title is “Therapist” by 10%.
# Retrieve information about all salaries ordered ascending.

USE hospital;

UPDATE employees
SET salary = salary * 1.1
WHERE job_title = 'Therapist';

SELECT salary
FROM employees
ORDER BY salary;