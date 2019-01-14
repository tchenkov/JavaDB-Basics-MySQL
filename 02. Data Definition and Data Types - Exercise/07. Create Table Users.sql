#	07. Create Table Users
#
# Using SQL query create table users with columns:
# id – unique number for every user. There will be no more than 263-1 users. (Auto incremented)
# username – unique identifier of the user will be no more than 30 characters (non Unicode). (Required)
# password – password will be no longer than 26 characters (non Unicode). (Required)
# profile_picture – image with size up to 900 KB. 
# last_login_time
# is_deleted – shows if the user deleted his/her profile. Possible states are true or false.
# 
# Make id primary key. Populate the table with 5 records.

USE minions;

CREATE TABLE users(
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(26) NOT NULL,
    profile_picture TINYBLOB,
    last_login_time TIMESTAMP,
    is_deleted BOOL NOT NULL DEFAULT FALSE
);

INSERT INTO users (username, password)
VALUES
	('user1', 'password1'),
    ('user2', 'password2'),
    ('user3', 'password3'),
    ('user4', 'password4'),
    ('user5', 'password5');