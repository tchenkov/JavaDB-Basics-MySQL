#	06. Find Towns Starting With
#
# Write a SQL query to find all towns that start with letters M, K, B or
# E (case insensitively). Order them alphabetically by town name.

USE soft_uni;

SELECT *
FROM towns t
WHERE t.name REGEXP '^[mkbe]'
ORDER BY t.name;

# alternative solution
SELECT *
FROM towns t
WHERE LEFT(t.name, 1) IN('m', 'k', 'b', 'e')
ORDER BY t.name;
