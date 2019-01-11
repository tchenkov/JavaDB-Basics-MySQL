# 02. Insert Data in Tables
#
# Inserting data can be done with a query too. To do that we use the “INSERT” clause. Populate the “employees” table with 3 test values.

USE gamebar;

INSERT INTO employees (first_name, last_name)
VALUES
	('ivan','ivanov'),
    ('sybi', 'syvev'),
    ('spas','spasov');