#	16. Create View Employees with Job Titles
#
# Write a SQL query to create view v_employees_job_titles with full employee
# name and job title. When middle name is NULL replace it with empty string ('').

USE soft_uni;

CREATE VIEW v_employees_job_titles AS
	SELECT
		CONCAT_WS(' ', first_name, IFNULL(middle_name, ''), last_name) full_name,
		job_title
	FROM employees;

SELECT * FROM v_employees_job_titles;