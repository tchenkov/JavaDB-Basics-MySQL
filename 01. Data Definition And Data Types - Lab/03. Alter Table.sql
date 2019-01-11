#	03. Alter Table
#
# Altering the tables is done via the “ALTER TABLE” clause.
# Add a new column – “middle_name” to the “employees” table.

USE gamebar;

ALTER TABLE employees
ADD COLUMN middle_name VARCHAR(50) DEFAULT NULL;