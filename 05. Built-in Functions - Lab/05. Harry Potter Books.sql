#	05. Harry Potter Books
#
# Write a SQL query to retrieve titles of all the Harry Potter books.
# Order the information by id.

USE book_library;

SELECT b.title
FROM books b
WHERE b.title LIKE 'harry potter%'
ORDER BY b.id;