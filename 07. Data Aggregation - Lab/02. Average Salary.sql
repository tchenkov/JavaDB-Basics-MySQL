#	02. Average Salary
#
# Write a query to calculate the average salary in each department.
# Order the information by department_id. Round the salary result to
# two digits after the decimal point.

USE restaurant;

SELECT
	e.department_id,
    round(avg(e.salary), 2) `Average Salary`
FROM employees e
GROUP BY e.department_id
ORDER BY e.department_id;