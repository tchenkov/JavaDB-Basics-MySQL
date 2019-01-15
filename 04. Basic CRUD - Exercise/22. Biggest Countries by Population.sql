#	22. Biggest Countries by Population
#
# Find the 30 biggest countries by population from Europe. Display the
# country name and population. Sort the results by population (from biggest
# to smallest), then by country alphabetically.

USE geography;

SELECT
	c.country_name,
    c.population
FROM countries c
WHERE c.continent_code = 'EU'
ORDER BY 
	c.population DESC,
    c.country_name
LIMIT 30;