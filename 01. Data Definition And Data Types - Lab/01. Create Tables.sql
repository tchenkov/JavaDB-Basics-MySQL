# 01. Create Tables

# When we create tables, we specify the database we want to add them to. This is done by using the “USE” clause.
# Submit your solutions in JUDGE without the “USE {database name}” row.
# Table “employees”:
# • id – INT, primary key, AUTO_INCREMENT;
# • first_name – VARCHAR, NOT NULL;
# • last_name – VARCHAR, NOT NULL;
# Create the “categories” and “products” tables analogically:
# Table “categories”:
# • id – INT, primary key, AUTO_INCREMENT;
# • name – VARCHAR, NOT NULL;
# Table “products”:
# • id – INT, primary key, AUTO_INCREMENT;
# • name – VARCHAR, NOT NULL;
# • category_id – INT, NOT NULL;

USE gamebar;

CREATE TABLE employees (
	id INT(11) NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
  	PRIMARY KEY(id)
);
    
CREATE TABLE categories (
	id INT(11) NOT NULL AUTO_INCREMENT,
  	name VARCHAR(50) NOT NULL,
  	PRIMARY KEY(ID)
);
    
CREATE TABLE products (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	category_id INT(11) NOT NULL,
	PRIMARY KEY (`id`)
);