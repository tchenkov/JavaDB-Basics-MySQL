#	13. Hotel Database
#
# Using SQL queries create Hotel database with the following entities:
# employees (id, first_name, last_name, title, notes)
# customers (account_number, first_name, last_name, phone_number,
#	emergency_name, emergency_number, notes)
# room_status (room_status, notes)
# room_types (room_type, notes)
# bed_types (bed_type, notes)
# rooms (room_number, room_type, bed_type, rate, room_status, notes)
# payments (id, employee_id, payment_date, account_number,
#	first_date_occupied, last_date_occupied, total_days, amount_charged,
#	tax_rate, tax_amount, payment_total, notes)
# occupancies (id, employee_id, date_occupied, account_number, room_number,
#	rate_applied, phone_charge, notes)
#
# Set most appropriate data types for each column. Set primary key to each
# table. Populate each table with 3 records. Make sure the columns that
# are present in 2 tables would be of the same data type. Consider which
# fields are always required and which are optional.

CREATE DATABASE hotel;

USE hotel;

CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
    notes TEXT
);

CREATE TABLE customers(
	account_number INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(30) NOT NULL,
    emergency_name VARCHAR(30) NOT NULL,
    emergency_number VARCHAR(30) NOT NULL,
    notes TEXT
);

CREATE TABLE room_status(
	room_status INT AUTO_INCREMENT PRIMARY KEY,
    notes TEXT
);

CREATE TABLE room_types(
	room_type INT AUTO_INCREMENT PRIMARY KEY,
    notes TEXT
);

CREATE TABLE bed_types(
	bed_type INT AUTO_INCREMENT PRIMARY KEY,
    notes TEXT
);

CREATE TABLE rooms(
	room_number INT NOT NULL UNIQUE PRIMARY KEY,
    room_type INT NOT NULL,
    bed_type INT NOT NULL,
    rate DOUBLE(7,2) NOT NULL,
    room_status INT NOT NULL,
    notes TEXT
);

CREATE TABLE payments(
	id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    payment_date DATE NOT NULL,
    account_number VARCHAR(30) NOT NULL,
    first_date_occupied DATE NOT NULL,
    last_date_occupied DATE NOT NULL,
    total_days TINYINT UNSIGNED NOT NULL,
    amount_charged DOUBLE(10, 2) NOT NULL,
    tax_rate DOUBLE (5, 2) DEFAULT 20,
    tax_amount DOUBLE(5, 2) NOT NULL,
    payment_total DOUBLE(10, 2) NOT NULL,
    notes TEXT
);

CREATE TABLE occupancies(
	id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    date_occupied DATE NOT NULL,
    account_number VARCHAR(30) NOT NULL,
    room_number INT NOT NULL,
    rate_applied DOUBLE(10, 2) NOT NULL,
    phone_charge DOUBLE(10, 2) NOT NULL,
    notes TEXT
);

INSERT INTO employees(first_name, last_name, title)
VALUES
	('ivan', 'goshkov', 'motokarist'),
	('minko', 'svircholini', 'portier'),
    ('ivan', 'kynchov', 'pichkolo');

INSERT INTO customers(
	first_name,
    last_name,
    phone_number,
    emergency_name,
    emergency_number
)
VALUES
	('first1', 'last1', 'phone N 1', 'name1', 'number1'),
	('first2', 'last2', 'phone N 2', 'name2', 'number2'),
    ('first3', 'last3', 'phone N 3', 'name3', 'number3');

INSERT INTO room_status(room_status)
VALUES (1), (2), (3);

INSERT INTO room_types(room_type)
VALUES (1), (2), (3);

INSERT INTO bed_types(bed_type)
VALUES (1), (2), (3);

INSERT INTO rooms(room_number, room_type, bed_type, rate, room_status)
VALUES
	(89, 1, 1, 15, 1),
    (5, 1, 1, 15, 1),
    (9, 1, 1, 15, 1);

INSERT INTO payments(
	employee_id,
    payment_date,
    account_number,
    first_date_occupied,
    last_date_occupied,
    total_days,
    amount_charged,
    tax_amount,
    payment_total
)
VALUES
	(1, '2018-12-22', 'acc num 1', '2018-12-22', '2018-12-24', 2, 5.6, 1.12 , 6.72),
	(1, '2018-12-22', 'acc num 2', '2018-12-22', '2018-12-24', 2, 5.6, 1.12 , 6.72),
	(1, '2018-12-22', 'acc num 3', '2018-12-22', '2018-12-24', 2, 5.6, 1.12 , 6.72);
        
INSERT INTO occupancies(
	employee_id,
    date_occupied,
    account_number,
    room_number,
    rate_applied,
    phone_charge
)
VALUES
	(1, '2018-12-22', 'acc num 1', 89, 5.6, 0),
	(1, '2018-12-22', 'acc num 2', 5, 5.6, 0),
    (1, '2018-12-22', 'acc num 3', 9, 5.6, 0);