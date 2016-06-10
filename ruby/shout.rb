=begin

module Shout

	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + " yaaaay!!!" + " :)"
	end
end

p Shout.yell_angrily("Dangit")
p Shout.yell_happily("Yippy")

=end

module Shout

	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + " yaaaay!!!" + " :)"
	end
end

class Teacher

	include Shout

end

class Gambler

	include Shout

end

teacher = Teacher.new
p teacher.yell_angrily("Come on kid")
p teacher.yell_happily("Good job")

gambler = Gambler.new
p gambler.yell_angrily("I lost")
p gambler.yell_happily("I won")
