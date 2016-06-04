# Input string and use while loop to loop through string and perform a .next on each index
# Add an if loop to modify space to remain space
# Increment index to avoid infinite loop

def encrypt(key)
	index = 0
	while index < key.length
		if key[index] == " "
			key[index] = " "
		elsif
			key[index] == "z"
			key[index] = "a"
		else
			key[index] = key[index].next
		end
	index += 1
	end
	p key
end

# Made a go_back method that takes a letter and changes a letter to the precious letter in the alphabet.
# Made a decrypt method that uses the go_back method on whole string.
# Add an if loop to modify space to remain space.
# Increment index to avoid infinite loop.

def go_back(phrase)
	letters = "abcdefghijklmnopqrstuvwxyz"
	order = letters.index(phrase)
	new_order = order - 1

	letters[new_order]
end

def decrypt(pass)
	index = 0
	while index < pass.length
		if pass[index] == " "
			pass[index] = " "
		else
			pass[index] = go_back(pass[index])
		end	
		index += 1
	end
	p pass
end

decrypt(encrypt("swordfish"))

# The nested method passes the string through the encrypt method and then through the decrpyt method, which returns it to its original state.

# Ask user "would you like to encrypt or decrypt?" and use gets.chomp to get user input.
# Ask user for password and use gets.chomp to place user input into variable.
# Either encrypts or decrypts password based on input.

# DRIVER CODE

puts "Would you like to encrypt or decrypt?"
answer = gets.chomp

puts "What is your password?"
password = gets.chomp

if answer == "encrypt"
	p encrypt(password)
elsif answer = "decrypt"
	p decrypt(password)
else
	p "I don't know what you're talking about."
end
