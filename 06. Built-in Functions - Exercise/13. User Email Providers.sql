#	13. User Email Providers
#
# Find information about the email providers of all users. Display the user_name
# and the email provider. Sort the results by email provider alphabetically,
# then by username.

USE diablo;

SELECT
	u.user_name,
    SUBSTR(u.email, locate('@', u.email) + 1) `Email Provider`
FROM users u
ORDER BY 
	`Email Provider`,
    u.user_name;