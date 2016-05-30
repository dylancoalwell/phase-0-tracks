puts "How many people will be processed?"
employees = gets.chomp.to_i

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
g_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (y/n)"
health_insurance = gets.chomp

counter = 0

loop do
	counter += 1
	puts case
		when 2016 - birth_year == age && (g_bread == "y" || health_insurance == "y")
			"Probably not a vampire."

		when 2016 - birth_year != age && (g_bread == "n" || health_insurance == "n")
			"Probably a vampire."

		when 2016 - birth_year != age && (g_bread == "n" && health_insurance == "n")
			"Amost certainly a vampire."

		when name == "Drake Cula" || name == "Tu Fang"
			"Definitely a vampire."

		else 
			"Results inconclusive."
	end

	if counter <= employees
		break
	end

end