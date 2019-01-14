#	09. Set Default Value of a Field
#
# Using SQL queries modify table users. Make the default value of
# last_login_time field to be the current time.

USE minions;

ALTER TABLE users
CHANGE COLUMN last_login_time last_login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;