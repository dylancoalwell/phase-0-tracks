=begin
	
Design a Movie Class

Attributes###############
#Title: varies (string)
#Genre: varies (string)
#Length in minutes: varies (integer)
#Location: varies (string)
#Lead Actors/Actresses: varies (integer)

Methods###################
#A method that plays the movie. Doesn't take any input.
#A method that fast-forwards the movie. Takes a float that determines the speed.
#A method that pauses the movie. Doesn't take any input.
#A method that adds subtitles. Takes a string for the desired language.
	
=end

class Movie

	attr_reader :title
	attr_accessor :genre, :length, :location, :leading_role

	def initialize(title)
		@title = title
		@genre = ""
		@length = 0
		@location = ""
		@leading_role = ""
		puts "Initializing Movie instance..."
	end

	def play
		puts "The movie starts."
	end

	def fast_forward(speed)
		puts "The movie plays at #{speed.to_s} speed."
	end

	def pause
		puts "The movie is paused."
	end

	def add_subtitles(language)
		puts "The subtitles are now in #{language}."
	end

end

pulp_fiction = Movie.new("Pulp Fiction")
pulp_fiction.play
pulp_fiction.fast_forward(2.0)
pulp_fiction.pause
pulp_fiction.add_subtitles("French")
puts "The title of the movie is #{pulp_fiction.title}."