#	11. Mix of Peak and River Names
#
# Combine all peak names with all river names, so that the last letter of each
# peak name is the same as the first letter of its corresponding river name.
# Display the peak name, the river name, and the obtained mix. Sort the results by
# the obtained mix alphabetically.

USE geography;

SELECT
	p.peak_name,
    r.river_name,
    LOWER(CONCAT(p.peak_name, SUBSTRING(r.river_name, 2))) 'mix'
FROM peaks p, rivers r
WHERE RIGHT(p.peak_name, 1) = LEFT(r.river_name, 1)
ORDER BY mix;