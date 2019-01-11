#	04. Adding Constraints
#
# Create the connection via foreign key between the “products” and “categories”
# tables that you’ve createdearlier. Make “category_id” foreign key linked to “id”
# in the “categories” table.

USE gamebar;

ALTER TABLE products
ADD CONSTRAINT fk_category_id FOREIGN KEY(category_id) REFERENCES categories(id);