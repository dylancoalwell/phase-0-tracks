# Making a fake address book for people who want to create the illusion of having a lot of friends.

###################### OBJECTIVES ######################################################################
# The user should be able to provied input. They should be able provide how many fake contacts the want. 
# They should also be able to C.R.U.D. the database.
# Define a method that creates an address book database that includes fake name, phone number, email address, street address, city and country for fake contacts.
# Include FAKER gem for creating fake contact info.
# Add a foreign key to each contact that signifies if the contact is real or fake.
# Create an interface with which the user can C.R.U.D. the database.
# User should be able to print out their address book in a readable format.
########################################################################################################

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("address_book.db")
db.results_as_hash = true

# This is the contact table.
create_address_book_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS address_book(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	phone_number VARCHAR(255),
	email VARCHAR(255),
	address VARCHAR(255),
	city VARCHAR(255),
	status BOOLEAN,
	social_media_id INT,
	FOREIGN KEY (social_media_id) REFERENCES social_media(id)
	)
SQL

# this is a one-to-many table that signifies the social media platform the contact uses
create_social_media_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS social_media(
	id INTEGER PRIMARY KEY,
	social_media VARCHAR(255)
	)
SQL

# method that populates the social media table
def create_social_media_table(db)
	db.execute("INSERT INTO social_media ('social_media') VALUES (?)", ['Twitter'])
	db.execute("INSERT INTO social_media ('social_media') VALUES (?)", ['Facebook'])
	db.execute("INSERT INTO social_media ('social_media') VALUES (?)", ['Linkedin'])
end

# method used to create any contact
def create_contact(db, name, phone_number, email, address, city, status, social_media_id)
	db.execute("INSERT INTO address_book ('name', 'phone_number', 'email', 'address', 'city', 'status', 'social_media_id') VALUES (?, ?, ?, ?, ?, ?, ?)", [name, phone_number, email, address, city, status, social_media_id])
end

# method used to ask the user how many fake contacts they would like, and then create them
def import_fake_contacts(db)
	puts "How many fake contacts would you like to create?"
	contacts = gets.chomp.to_i

	contacts.times do
		create_contact(db, Faker::Name.name, Faker::PhoneNumber.phone_number, Faker::Internet.email, Faker::Address.street_address, Faker::Address.city + ", " + Faker::Address.country, 'false', rand(1...3))
	end
end

# def modify_existing_contact(db)
# 	puts "Would you like to view an existing contact?(y/n)"
# 	answer = gets.chomp
# 	if answer == "y"
# 		puts ""

####################### DRIVER CODE ################################################################
db.execute(create_social_media_table_cmd)
create_social_media_table(db)
db.execute(create_address_book_table_cmd)
import_fake_contacts(db)


# select address_book.name, address_book.phone_number, address_book.email, address_book.city, social_media.social_media from address_book join social_media on address_book.social_media_id = social_media.id;