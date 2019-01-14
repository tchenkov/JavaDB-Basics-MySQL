#	06. Create Table People
#
# Using SQL query create table “people” with columns:
# id – unique number for every person there will be no more than 231-1people. (Auto incremented)
# name – full name of the person will be no more than 200 Unicode characters. (Not null)
# picture – image with size up to 2 MB. (Allow nulls)
# height –  In meters. Real number precise up to 2 digits after floating point. (Allow nulls)
# weight –  In kilograms. Real number precise up to 2 digits after floating point. (Allow nulls)
# gender – Possible states are m or f. (Not null)
# birthdate – (Not null)
# biography – detailed biography of the person it can contain max allowed Unicode characters. (Allow nulls)
#
# Make id primary key. Populate the table with 5 records.

USE minions;

CREATE TABLE people(
	id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    picture TINYBLOB,
    height DOUBLE(3,2),
    weight DOUBLE(5,2),
    gender ENUM('m','f') NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people (name, gender, birthdate)
VALUES ('spas', 'm', '1999-05-03'),
	('spas2', 'm', '1999-05-03'),
    ('spas3', 'f', '1999-06-03'),
    ('spas4', 'm', '1999-07-03'),
    ('spas5', 'm', '1999-08-03');