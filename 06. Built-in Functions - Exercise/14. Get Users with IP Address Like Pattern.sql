#	14. Get Users with IP Address Like Pattern
#
# Find the user_name and the ip_address for each user, sorted by user_name
# alphabetically. Display only the rows, where the ip_address matches
# the pattern: "___.1%.%.___".

USE diablo;

SELECT
	u.user_name,
    u.ip_address
FROM users u
WHERE u.ip_address LIKE '___.1%.%.___'
ORDER BY u.user_name;