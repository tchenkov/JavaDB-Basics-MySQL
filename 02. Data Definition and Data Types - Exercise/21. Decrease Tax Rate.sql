#	21. Decrease Tax Rate
#
# Use hotel database and decrease tax rate by 3% to all payments.
# Select only tax_rate column from the payments table.

USE hotel;

UPDATE payments
SET tax_rate = tax_rate - tax_rate * 0.03;

SELECT tax_rate
FROM payments;