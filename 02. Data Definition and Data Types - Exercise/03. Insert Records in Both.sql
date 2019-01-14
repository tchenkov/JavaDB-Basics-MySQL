#	03. Insert Records in Both Tables
#
# Populate both tables with sample records given in the table below.

USE minions;

INSERT INTO towns(name)
VALUES
	('Sofia'),
    ('Plovdiv'),
    ('Varna');

INSERT INTO minions(name, age, town_id)
VALUES
	('Kevin', 22, 1),
    ('Bob', 15, 3),
    ('Steward', null, 2);