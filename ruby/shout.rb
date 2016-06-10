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