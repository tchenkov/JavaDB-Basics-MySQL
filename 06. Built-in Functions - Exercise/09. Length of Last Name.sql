#	09. Length of Last Name
#
# Write a SQL query to find the names of all employees whose last name is
# exactly 5 characters long.

USE soft_uni;

SELECT
	e.first_name,
    e.last_name
FROM employees e
WHERE CHAR_LENGTH(e.last_name) = 5;