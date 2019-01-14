#	14. Create SoftUni Database
#
# Now create bigger database called soft_uni. You will use database in
# the future tasks. It should hold information about:
# towns (id, name)
# addresses (id, address_text, town_id)
# departments (id, name)
# employees (id, first_name, middle_name, last_name, job_title,
#	department_id, hire_date, salary, address_id)
#
# Id columns are auto incremented starting from 1 and increased by 1
# (1, 2, 3, 4…). Make sure you use appropriate data types for each column.
# Add primary and foreign keys as constraints for each table. Consider
# which fields are always required and which are optional.

CREATE DATABASE soft_uni;

USE soft_uni;

CREATE TABLE towns(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(30) NOT NULL
);

CREATE TABLE addresses(
	id INT AUTO_INCREMENT PRIMARY KEY,
    address_text TEXT NOT NULL,
    town_id INT NOT NULL,
    CONSTRAINT fk_town_id FOREIGN KEY(town_id) REFERENCES towns(id)
);

CREATE TABLE departments(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    middle_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    job_title VARCHAR(30) NOT NULL,
    department_id INT NOT NULL,
    hire_date DATE NOT NULL,
    salary DOUBLE(10, 2) NOT NULL,
    address_id INT DEFAULT NULL,
    CONSTRAINT fk_department_id FOREIGN KEY(department_id) REFERENCES departments(id),
    CONSTRAINT fk_address_id FOREIGN KEY(address_id) REFERENCES addresses(id)
);