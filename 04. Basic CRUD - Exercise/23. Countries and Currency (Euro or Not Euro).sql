#	23. Countries and Currency (Euro / Not Euro)
#
# Find all countries along with information about their currency. Display
# the country name, country code and information about its currency:
# either "Euro" or "Not Euro".

USE geography;

SELECT
	c.country_name,
    c.country_code,
    IF(c.currency_code='EUR', 'Euro', 'Not Euro') currency
FROM countries c
ORDER BY c.country_name;