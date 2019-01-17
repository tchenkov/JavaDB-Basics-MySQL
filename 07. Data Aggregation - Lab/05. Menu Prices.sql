#	05. Menu Prices
#
# Write a query to retrieve information about the prices of each category. The output should consist of:
# * Category_id
# * Average Price
# * Cheapest Product
# * Most Expensive Product
# Round the results to 2 digits after the decimal point.

USE restaurant;

SELECT
	p.category_id,
    round(avg(p.price), 2) `Average Price`,
    round(min(p.price), 2) `Cheapest Product`,
    round(max(p.price), 2) `Most Expensive Product`
FROM products p
GROUP BY p.category_id;