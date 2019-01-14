#	11. Movies Database
#
# Using SQL queries create Movies database with the following entities:
# directors (id, director_name, notes)
# genres (id, genre_name, notes)
# categories (id, category_name, notes)
# movies (id, title, director_id, copyright_year, length, genre_id,
#	category_id, rating, notes)
#
# Set most appropriate data types for each column. Set primary key to
# each table. Populate each table with 5 records. Make sure the columns
# that are present in 2 tables would be of the same data type. Consider
# which fields are always required and which are optional.

CREATE DATABASE movies;

USE movies;

# directors (id, director_name, notes)
CREATE TABLE directors(
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
    director_name VARCHAR(60) NOT NULL,
    notes TEXT
);

# genres (id, genre_name, notes)
CREATE TABLE genres(
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(60) NOT NULL,
    notes TEXT
);

# categories (id, category_name, notes)
CREATE TABLE categories(
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(60) NOT NULL,
    notes TEXT
);

# movies (id, title, director_id, copyright_year, length, genre_id,
#	category_id, rating, notes)
CREATE TABLE movies(
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    director_id INT(11),
    copyright_year YEAR,
    length DOUBLE NULL,
    genre_id INT(11),
    category_id INT(11),
    rating DOUBLE,
    notes TEXT
);

# DATA

INSERT INTO movies
	(title)
VALUES
	('movie1'),
	('movie2'),
	('movie3'),
	('movie4'),
	('movie5');

INSERT INTO directors
	(director_name)
VALUES
	('director1'),
	('director2'),
	('director3'),
	('director4'),
	('director5');

INSERT INTO categories
	(category_name)
VALUES
	('category1'),
	('category2'),
	('category3'),
	('category4'),
	('category5');

INSERT INTO genres
	(genre_name)
VALUES
	('genre1'),
	('genre2'),
	('genre3'),
	('genre4'),
    ('genre5');