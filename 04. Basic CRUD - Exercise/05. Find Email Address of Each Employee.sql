#	05. Find Email Address of Each Employee
#
# Write a SQL query to find the email address of each employee (by his
# first and last name). Consider that the email domain is softuni.bg.
# Emails should look like "John.Doe@softuni.bg". The produced column
# should be named "full_email_address".

USE soft_uni;

SELECT CONCAT(e.first_name, '.', e.last_name, '@softuni.bg') full_email_address
FROM employees e;