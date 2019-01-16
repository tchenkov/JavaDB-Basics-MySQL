#	04. Days Lived
#
# Write a SQL query to calculate the days that the authors have lived.
# NULL values mean that the author is still alive.

USE book_library;

SELECT
	CONCAT_WS(' ', a.first_name, a.last_name) `Full Name`,
	abs(timestampdiff(DAY, a.born, a.died)) `Days Lived`
FROM authors a;