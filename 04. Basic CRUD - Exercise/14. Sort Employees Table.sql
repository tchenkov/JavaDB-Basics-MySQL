#	14. Sort Employees Table
#
# Write a SQL query to sort all records in the еmployees table by the following criteria:
# * First by salary in decreasing order
# * Then by first name alphabetically
# * Then by last name descending
# * Then by middle name alphabetically
# Sort the information by id.

USE soft_uni;

SELECT *
FROM employees e
ORDER BY 
	e.salary DESC,
	e.first_name ASC,
    e.last_name DESC,
    e.middle_name ASC;