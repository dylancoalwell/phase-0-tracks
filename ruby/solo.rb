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
	end

	def play
		puts "The movie starts."
	end

	def fast_forward(speed)
		puts "The movie plays at #{speed} speed."
	end

	def pause
		puts "The movie is paused."
	end

	def add_subtitles(language)
		puts "The subtitles are now in #{language}."
	end

end

movies = []
puts "How many movies would you like to create?"
x = gets.chomp.to_i

x.times do |i|
	puts "What is the title of the movie?"
	title = gets.chomp
	movies << Movie.new(title)
	puts "What is the genre?"
	movies[i].genre = gets.chomp
	puts "How long is the movie (in minutes)?"
	movies[i].length = gets.chomp.to_i
	puts "Where is the movie located?"
	movies[i].location = gets.chomp
	puts "Who is the leading actor or actress?"
	movies[i].leading_role = gets.chomp
end

movies.each do |i|
	puts "Title: #{i.title}."
	puts "Genre: #{i.genre}."
	puts "Length: #{i.length}."
	puts "Location: #{i.location}."
	puts "Leading Actor or Actress: #{i.leading_role}" 
end