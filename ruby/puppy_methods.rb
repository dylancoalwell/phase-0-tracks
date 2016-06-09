#Dylan Coalwell & Kimberly Patton

class Puppy

    def initialize
        puts "Initializing new puppy instance..."
    end

    def fetch(toy)
      puts "I brought back the #{toy}!"
      toy
    end

    def speak(x)
        x.times { puts "Woof!" }
    end

    def roll_over
        puts "​*Rolls over*​"
    end

    def dog_years(human_years)
         human_years * 7
    end

    def play_dead
        puts "​*falls on floor and sticks tongue out of mouth*​"
    end

end

max = Puppy.new
max.fetch("ball")
max.speak(6)
max.roll_over
p max.dog_years(23)
max.play_dead

class Kitten

    def initialize
        puts "Initializing new kitten instance..."
    end
    
    def yarn
        puts "*rolls ball of yarn around*"
    end
    
    def shows_affection
        puts "*purr*"
    end

    def flashlight
        puts "*follows the flashlight*"
    end 
    
end

kittens_array = []
50.times {kittens_array << Kitten.new }           
kittens_array.each{|kitten|kitten.yarn}
kittens_array.each{|kitten|kitten.shows_affection}
kittens_array.each{|kitten|kitten.flashlight}