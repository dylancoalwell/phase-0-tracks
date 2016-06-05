#Gets user input by asking user questions
puts "Hello! What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "How many children do you have?"
number_of_childeren = gets.chomp.to_i

puts "What is your decor theme?"
decor_theme = gets.chomp

#Makes a hash that includes the user input.
client_info = {name: name, age: age, number_of_childeren: number_of_childeren, decor_theme: decor_theme}

#Prints the info that is in the hash back to the user
puts "Your name is: #{client_info[:name]}."
puts "Your age is: #{client_info[:age]}."
puts "You have #{client_info[:number_of_childeren]} children."
puts "Your decor theme is: #{client_info[:decor_theme]}."

#Ask user if they would like to update anything.
puts "Are there any keys you would like to update?"
answer = gets.chomp

#Updates the key with the value the user would like. Doesn't if they don't want to.
if client_info.has_key?(answer.to_sym) == true
	puts "What would you like the value to be?"
	value = gets.chomp
	client_info[answer.to_sym] = value
	puts "Your name is: #{client_info[:name]}."
	puts "Your age is: #{client_info[:age]}."
	puts "You have #{client_info[:number_of_childeren]} children."
	puts "Your decor theme is: #{client_info[:decor_theme]}."
elsif answer == "none"
	puts "I guess you don't need to update anything."
else
	puts "There isn't a key with that name."
end
