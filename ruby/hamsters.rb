puts "What is the hamster's name?"
name = gets.chomp

puts "How noisy is the hamster? (1 to 10)"
volume = gets.chomp.tp_i

puts "What color is the hamster's fur?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
is_adoptable = gets.chomp

puts "What is the estimated age of the hamster? (in years)"
age = gets.chomp

if age == ""
	age = nil
end

