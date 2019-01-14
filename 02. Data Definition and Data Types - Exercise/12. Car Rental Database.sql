#	12. Car Rental Database
#
# Using SQL queries create car_rental database with the following entities:
# categories (id, category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
# cars (id, plate_number, make, model, car_year, category_id, doors, picture,
#	car_condition, available)
# employees (id, first_name, last_name, title, notes)
# customers (id, driver_licence_number, full_name, address, city, zip_code, notes)
# rental_orders (id, employee_id, customer_id, car_id, car_condition, tank_level,
#	kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date,
# total_days, rate_applied, tax_rate, order_status, notes)
#
# Set most appropriate data types for each column. Set primary key to each table.
# Populate each table with 3 records. Make sure the columns that are present in
# 2 tables would be of the same data type. Consider which fields are always
# required and which are optional.

CREATE DATABASE car_rental;

USE car_rental;

CREATE TABLE categories(
	id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    daily_rate DOUBLE(6,2) NOT NULL,
    weekly_rate DOUBLE(6,2) NOT NULL,
    monthly_rate DOUBLE(6,2) NOT NULL,
    weekend_rate DOUBLE(6,2) NOT NULL
);

CREATE TABLE cars(
	id INT AUTO_INCREMENT PRIMARY KEY,
    plate_number VARCHAR(10) NOT NULL,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    car_year YEAR NOT NULL,
    category_id INT NOT NULL,
    doors TINYINT UNSIGNED NOT NULL,
    picture BLOB,
    car_condition TEXT NOT NULL,
    available BOOL NOT NULL DEFAULT TRUE
);

CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    title VARCHAR(20) NOT NULL,
    notes TEXT
);

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
    driver_licence_number VARCHAR(20) NOT NULL,
    full_name VARCHAR(80) NOT NULL,
    address VARCHAR(200) NOT NULL,
    city VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    notes TEXT
);

CREATE TABLE rental_orders(
	id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
	car_id INT NOT NULL,
    car_condition TEXT NOT NULL,
    tank_level DOUBLE(5,2) NOT NULL,
    kilometrage_start INT NOT NULL,
    kilometrage_end INT,
    total_kilometrage INT,
    start_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    end_date DATE NOT NULL,
    total_days INT NOT NULL,
    rate_applied DOUBLE(6,2) NOT NULL,
    tax_rate DOUBLE(6,2) NOT NULL DEFAULT 20,
    order_status VARCHAR(15) NOT NULL,
    notes TEXT
);

INSERT INTO categories(
	category,
    daily_rate,
    weekly_rate,
    monthly_rate,
    weekend_rate
)
VALUES
	('sport cars', 10.5, 52.5, 157.5, 15.75),
	('coupe', 5, 25, 75, 7.5),
	('van', 7, 35, 105, 10.5);
    
INSERT INTO cars(
	plate_number,
    make,
    model,
    car_year,
    category_id,
    doors,
    car_condition
)
VALUES
	('SD 2816 AA', 'manuf1', 'mod1', 1999, 2, 4, 'like new'),
	('SD 2888 AA', 'manuf2', 'mod3', 2016, 1, 2, 'like new'),
	('SD 9454 AA', 'manuf1', 'mod8', 2010, 3, 3, 'like new');

INSERT INTO employees(first_name, last_name, title)
VALUES
	('spas', 'nikolov', 'worker'),
	('linko', 'iordanov', 'worker'),
	('pesho', 'goshov', 'CEO');
    
INSERT INTO customers(
	driver_licence_number,
    full_name,
    address,
    city,
    zip_code
)
VALUES
	('132468768', 'gosho peshov', 'nqkydevo', 'drugadevo', '654asdas6'),
	('2342323423', 'ivan peshov', 'nqkydevo', 'drugadevo', '654asdas6'),
	('1325557788', 'stamat peshov', 'nqkydevo', 'drugadevo', '654asdas6');
    
INSERT INTO rental_orders(
	employee_id,
    customer_id,
    car_id,
    car_condition,
    tank_level,
    kilometrage_start,
    end_date,
    total_days,
    rate_applied,
    order_status
)
VALUES
	(1, 2, 1, 'like new', 13.5, 311, '2018-11-30', 1, 15, 'in use'),
    (1, 3, 2, 'like new', 13.5, 311, '2018-11-30', 2, 13, 'in use'),
    (1, 1, 3, 'like new', 13.5, 311, '2018-11-30', 2, 12, 'in use');