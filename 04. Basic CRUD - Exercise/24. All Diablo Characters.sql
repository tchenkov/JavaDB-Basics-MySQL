#	24. All Diablo Characters
#
# Display the name of all characters in alphabetical order.

USE diablo;

SELECT c.name
FROM characters c
ORDER BY c.name;