#	04. Appetizers Count
#
# Write a query to retrieve the count of all appetizers (category id = 2)
# with price higher than 8.

USE restaurant;

SELECT count(*)
FROM products p
WHERE p.price > 8
GROUP BY p.category_id
HAVING p.category_id = 2;