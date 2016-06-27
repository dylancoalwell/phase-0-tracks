# Making a fake address book for people who want to create the illusion of having a lot of friends.

###################### OBJECTIVES ######################################################################
# The user should be able to provied input. They should be able provide how many fake contacts the want. 
# They should also be able to C.R.U.D. the database.
# Define a method that creates an address book database that includes fake name, phone number, email address, street address, city and country for fake contacts.
# Include FAKER gem for creating fake contact info.
# Create an interface with which the user can C.R.U.D. the database.
# User should be able to print out their address book in a readable format.
########################################################################################################

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("address_book.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS address_book(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	phone_number INT,
	email VARCHAR(255),
	address VARCHAR(255),
	city VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)