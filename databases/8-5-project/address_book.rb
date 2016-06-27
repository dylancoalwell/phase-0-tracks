# Making a fake address book for people who want to create the illusion of having a lot of friends.

###################### OBJECTIVES ######################################################################
# The user should be able to provied input. They should be able decide how many fake contacts they want. 
# They should also be able to C.R.U.D. the database.
# Define a method that creates an address book database that includes fake name, phone number, email address, street address, city and country for fake contacts.
# Include FAKER gem for creating fake contact info.
# Add a foreign key to each contact that signifies what social media platform they use.
# Create an interface with which the user can C.R.U.D. the database.
# User should be able to print out their address book in a readable format and print the fake and real contact seperately.
########################################################################################################

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("address_book.db")
db.results_as_hash = true

# This is the contact table. The status variable is false for fake contacts, true for real contacts.
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

# This method allows the user to view specific contacts
def view_existing_contact(db)
	puts "Please enter the name of the contact you would like to view."
	name = gets.chomp
	puts db.execute("SELECT address_book.name, address_book.phone_number, address_book.email, address_book.address, address_book.city, social_media.social_media, address_book.status FROM address_book join social_media ON address_book.social_media_id = social_media.id WHERE ?=name", [name])
end

# Method for updating an existing contact. Assuming the user doesn't misspell anything.
def update_existing_contact(db)
	puts "Please enter the name of the contact you would like to update."
	name = gets.chomp
	puts "Please enter the field you would like to update."
	field = gets.chomp
	puts "Please enter what you would like to update that value to."
	value = gets.chomp
	db.execute("UPDATE address_book SET #{field}=? WHERE name=?", [value, name])
	puts "Here is the contact now."
	puts db.execute("SELECT address_book.name, address_book.phone_number, address_book.email, address_book.address, address_book.city, social_media.social_media, address_book.status FROM address_book join social_media ON address_book.social_media_id = social_media.id WHERE ?=name", [name])
end

# Method for deleting an existing contact
def delete_existing_contact(db)
	puts "Please enter the name of the contact you would like to delete."
	name = gets.chomp
	db.execute("DELETE FROM address_book WHERE name=?", [name])
	puts "Contact deleted."
end

# Method for creating a new, real contact.
def create_new_contact(db)
	puts "Please enter the name of the contact."
	name = gets.chomp
	puts "Please enter the phone number of the contact."
	phone_number = gets.chomp
	puts "Please enter the email of the contact."
	email = gets.chomp
	puts "Please enter the address of the contact."
	address = gets.chomp
	puts "Please enter the city and country of the contact."
	city = gets.chomp
	puts "What social media platform does this person use (Facebook, Twitter, Linkedin)?"
	social_media = gets.chomp.downcase
	if social_media == "twitter"
		social_media = 1
	elsif social_media == "facebook"
		social_media = 2
	elsif social_media == "linkedin"
		social_media = 3
	else
		puts "I don't know what you said."
	end
	db.execute("INSERT INTO address_book ('name', 'phone_number', 'email', 'address', 'city', 'status', 'social_media_id') VALUES (?, ?, ?, ?, ?, 'true', ?)", [name, phone_number, email, address, city, social_media])
end

def crud_loop(db)
	loop do
		puts "What do you want to do with you address book? (Create, Read, Update, Delete, or Exit)"
		answer = gets.chomp.downcase
		if answer == "create"
			create_new_contact(db)
		elsif answer == "read"
			view_existing_contact(db)
		elsif answer == "update"
			update_existing_contact(db)
		elsif answer == "delete"
			delete_existing_contact(db)
		elsif answer == "exit"
			break
		else
			puts "I'm not sure what you said. Please repeat."
		end
	end
	puts "Now that you are done, do you want to view your fake contact list, your real contact list, both, or neither? (Please say fake, real, both, or neither)"
	answer = gets.chomp.downcase
	if answer == "fake"
		puts db.execute("SELECT address_book.name, address_book.phone_number, address_book.email, address_book.address, address_book.city, social_media.social_media FROM address_book join social_media ON address_book.social_media_id = social_media.id WHERE address_book.status='false'")
	elsif answer == "real"
		puts db.execute("SELECT address_book.name, address_book.phone_number, address_book.email, address_book.address, address_book.city, social_media.social_media FROM address_book join social_media ON address_book.social_media_id = social_media.id WHERE address_book.status='true'")
	elsif answer == "both"
		puts db.execute("SELECT address_book.name, address_book.phone_number, address_book.email, address_book.address, address_book.city, social_media.social_media FROM address_book join social_media ON address_book.social_media_id = social_media.id")
	elsif answer == "neither"
		puts "Have a good day!"
	else
		puts "I'm not sure what you said..."
	end
end
				
				
				


####################### DRIVER CODE ################################################################
db.execute(create_social_media_table_cmd)
create_social_media_table(db)
db.execute(create_address_book_table_cmd)
import_fake_contacts(db)
crud_loop(db)


# SELECT address_book.name, address_book.phone_number, address_book.email, address_book.address, address_book.city, social_media.social_media FROM address_book join social_media ON address_book.social_media_id = social_media.id;