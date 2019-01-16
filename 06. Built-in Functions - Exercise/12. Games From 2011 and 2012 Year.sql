#	12. Games From 2011 and 2012 Year
#
# Find the top 50 games ordered by start date, then by name. Display only the
# games from the years 2011 and 2012. Display the start date in the format "YYYY-MM-DD".

USE diablo;

SELECT
	g.name,
    DATE_FORMAT(g.start, '%Y-%m-%d') start
FROM games g
WHERE YEAR(g.start) IN(2011, 2012)
ORDER BY g.start
LIMIT 50;

# alternative solution
SELECT
	g.name,
    DATE_FORMAT(g.start, '%Y-%m-%d') start
FROM games g
WHERE YEAR(g.start) BETWEEN 2011 AND 2012
ORDER BY g.start
LIMIT 50;