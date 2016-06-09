class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
  	x.times { puts "Woof!" }
  end

  def roll_over
  	puts "*Rolls over*"
  end

  def dog_years(human_years)
  	human_years * 7
  end

  def play_dead
  	puts "*falls on floor and sticks tongue out of mouth*"
  end

end

max = Puppy.new
max.fetch("ball")
max.speak(6)
max.roll_over
p max.dog_years(23)
max.play_dead