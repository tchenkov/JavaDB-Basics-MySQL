#	03. Sum Cost of All Books
#
# Write a SQL query to sum prices of all books.
# Format the output to 2 digits after decimal point.

USE book_library;

SELECT
	ROUND(SUM(b.cost), 2) sum
FROM books b;