#	18. Find First 10 Started Projects
#
# Write a SQL query to find first 10 started projects. Select all information
# about them and sort them by start date, then by name. Sort the information by id.

USE soft_uni;

SELECT *
FROM projects p
ORDER BY
	p.start_date,
    p.name
LIMIT 10;