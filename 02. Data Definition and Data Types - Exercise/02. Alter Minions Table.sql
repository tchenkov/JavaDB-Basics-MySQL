#	02. Alter Minions Table
#
# Change the structure of the Minions table to have new column town_id
# that would be of the same type as the id column of towns table.
# Add new constraint that makes town_id foreign key and references to
# id column of towns table.

USE minions;

ALTER TABLE minions
ADD COLUMN town_id INT(11),
ADD CONSTRAINT fk_town_id
	FOREIGN KEY(town_id)
    REFERENCES towns(id);