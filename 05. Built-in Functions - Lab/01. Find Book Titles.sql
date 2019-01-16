#	01. Find Book Titles
#
# Write a SQL query to find books which titles start with “The”.
# Order the result by id.

USE book_library;

SELECT b.title
FROM books b
WHERE b.title LIKE 'the%'
ORDER BY b.id;