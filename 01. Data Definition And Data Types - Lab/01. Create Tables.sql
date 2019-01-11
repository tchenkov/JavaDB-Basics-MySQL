# 01. Create Tables

# Create Table.
#
# Table creation tab will appear. In the “Name” field type the name of your new table – “employees”. From the
# “Columns” tab you can start creating your table fields.
# First create an &quot;id&quot; field. It will be set to INT and AUTO_INCREMENT. Select Auto Increment (AI).
# Make the “id” field to be Primary Key (PK).
#
# Create 2 more fields – “first_name” and “last_name”.
#
# Similar to “employees” create 2 more tables.
# Table “categories”:
# • id – INT, primary key, AUTO_INCREMENT;
# • name – VARCHAR, NOT NULL;
# Table “products”:
# • id – INT, primary key, AUTO_INCREMENT;
# • name – VARCHAR, NOT NULL;
#
# • category_id – INT, foreign key referenced to the “categories” table (id)
#
# Foreign keys are created in the “Foreign keys” tab:
# • Reference table – select the table from which you will choose a column to link your foreign key –
# “categories”;
#  Columns – select the column you want to be set as foreign key – “category_id”;
# • Referenced columns – select the column set to primary to link the foreign key – “id”;''

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