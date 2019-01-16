#	07. Find Towns Not Starting With
#
# Write a SQL query to find all towns that do not start with letters R, B or
# D (case insensitively). Order them alphabetically by name.

USE soft_uni;

SELECT *
FROM towns t
WHERE t.name REGEXP '^[^rbd]'
ORDER BY t.name;

# alternative solution
SELECT *
FROM towns t
WHERE LEFT(t.name, 1) NOT IN('r', 'b', 'd')
ORDER BY t.name;