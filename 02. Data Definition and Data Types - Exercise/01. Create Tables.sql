#	01. Create Tables
#
# In the newly created database Minions add table minions (id, name, age).
# Then add new table towns (id, name). Set id columns of both tables to be
# primary key as constraint.

USE minions;

CREATE TABLE minions(
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age TINYINT UNSIGNED
);
CREATE TABLE towns(
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);