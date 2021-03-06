# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# EXPLANATION OF require_relative
# Require relative lets you include a relative file from within the same directory, "require" requires you to have an absolute path in order to 
# include a file.
#
require_relative 'state_data'

class VirusPredictor

#called when any .new creates new instance of class, accepts 3 arguments, assigns instance variables to inputs
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calls predicted deaths and speed of spread methods sequentially with inputs of instance variables, outputs prints and puts to console
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
#calculates number of deaths based on population density, by multiplying populations by float and rounding down 
#to nearest integer output prints string with state and number of deaths
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#accepts two arguments, sets speed variable to preset floats based on population density and puts string with no of months returns nil
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 #PSEUDOCODE FOR NATIONAL REPORT
 #Input - STATE_DATA hash
 #steps - call virus_effects on each state will output - iterate through the hash
 STATE_DATA.each do |state, popdata|
    this_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    this_state.virus_effects
 end

#    
# output -  string with state and predicted deaths and speed


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section