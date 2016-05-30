counter = 0
vampire_status = ""
allergy = ""
puts "How many people will be processed?"
employees = gets.chomp.to_i

loop do
	counter += 1

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	g_bread = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	health_insurance = gets.chomp

	puts "Please list any allergies you may have. Type 'done' when finished"

	loop do
		allergy = gets.chomp
		if allergy == "done"
			break
		end

		if allergy == "sunshine"
			break
		end
	end

	if 2016 - birth_year == age && (g_bread == "y" || health_insurance == "y")
		vampire_status = "Probably not a vampire."

	elsif 2016 - birth_year != age && (g_bread == "n" || health_insurance == "n")
		vampire_status = "Probably a vampire."

	elsif 2016 - birth_year != age && (g_bread == "n" && health_insurance == "n")
		vampire_status = "Amost certainly a vampire."

	elsif name == "Drake Cula" || name == "Tu Fang"
		vampire_status = "Definitely a vampire."

	elsif allergy == "sunshine"
		vampire_status = "Probably a vampire."

	else 
		vampire_status ="Results inconclusive."
	end
	puts vampire_status

	if counter == employees
		break
	end

end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."