=begin
	
1. Ask for tne user's name.
2. Swap the first and last names.
3. Change all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants 
(everything else besides the vowels) to the next consonant in the alphabet.

	
=end


name = ""
name_array = []
alias_array = []

loop do
	puts "What name do you want to give an alias?"
	name = gets.chomp
	if name.downcase == "quit"
		break
	end
	name_array << name
	name = name.downcase
	name = name.split("").reverse

	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	vowels = ["a", "e", "i", "o", "u"]

	def next_vowel(letter)
		vowels = ["a", "e", "i", "o", "u"]
		letter = letter.next
		until vowels.include?(letter) do
			letter.next!
		end
		letter
	end

	def next_consonant(letter)
		consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
		letter = letter.next
		until consonants.include?(letter) do
			letter.next!
		end
		letter
	end

	new_name = []

	name.map do |letter|
		if vowels.include?(letter) == true
			new_name << next_vowel(letter)
		elsif consonants.include?(letter) == true
			new_name << next_consonant(letter)
		elsif letter == " "
			new_name << letter = " "
		else
			new_name << letter.next!
		end
	end

	new_name = new_name.join.capitalize!
	p new_name
	alias_array << new_name
end

name_hash = Hash[name_array.zip(alias_array)]
name_hash.each { |name, nickname| puts "#{name} goes by #{nickname}." }