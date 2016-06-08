class Santa

	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0...140)
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		if @reindeer_ranking.include?(reindeer) == true
			@reindeer_ranking.delete_if { |name| name == reindeer }
			@reindeer_ranking << reindeer
		else
			puts "There isn't a reindeer with the name #{reindeer}."
		end
	end

end


santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do
  santas << Santa.new(genders.sample, ethnicities.sample)
end

p santas[90]
p santas[69]

santas[1].speak
santas[4].eat_milk_and_cookies("sugar cookie")

#old driver code
=begin
santa = Santa.new("male", "white")
p santa
santa.get_mad_at("Dasher")
santa.get_mad_at("Billy")
santa.celebrate_birthday
santa.gender = "polyamorous"
p santa.age
p santa.ethnicity
p santa
=end