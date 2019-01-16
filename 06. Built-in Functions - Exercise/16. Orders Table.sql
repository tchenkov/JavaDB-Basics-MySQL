#	16. Orders Table
#
# You are given a table orders(id, product_name, order_date) filled with data.
# Consider that the payment for an order must be accomplished within 3 days
# after the order date. Also the delivery date is up to 1 month. Write a query
# to show each product’s name, order date, pay and deliver due dates.

USE orders;

SELECT 
	o.product_name,
	o.order_date,
    o.order_date + INTERVAL 3 DAY pay_due,
    o.order_date + INTERVAL 1 MONTH delivery_due
FROM orders o;