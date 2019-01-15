#	17. Distinct Job Titles
#
# Write a SQL query to find all distinct job titles. Sort the result by
# job title alphabetically.

USE soft_uni;

SELECT DISTINCT job_title
FROM employees
ORDER BY job_title;