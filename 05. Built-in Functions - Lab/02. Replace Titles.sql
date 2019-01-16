#	02. Replace Titles
#
# Write a SQL query to find books which titles start with “The” and replace
# the substring with 3 asterisks. Retrieve data about the updated titles.
# Order the result by id.

USE book_library;

SELECT
	INSERT(b.title, 1, 3, '***') title
FROM books b
WHERE b.title LIKE 'the%'
ORDER BY b.id;