#	05. Find Towns with Name Length
#
# Write a SQL query to find town names that are 5 or 6 symbols long and
# order them alphabetically by town name.

USE soft_uni;

SELECT t.name
FROM towns t
WHERE CHAR_LENGTH(t.name) IN(5,6)
ORDER BY t.name;