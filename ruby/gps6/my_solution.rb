# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#relative lets ruby know that the filepath you are using is relative to the current ruby file you are using
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

 
#calls the predicted_deaths method using the attributes this object got when it was initialized
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

   private
#takes population_density and population and returns a string with the predicted_deaths in the string.
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end

    number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#takes the values from a state hash and finds the rate of spread for the virus
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 # for key, value in STATE_DATA do 
 #  new_name = key
 #  new_name = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
 #  new_name.virus_effects

 # end 

STATE_DATA.each do |key, value|
  new_name = key
  new_name = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  new_name.virus_effects

 end 

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# The states are strings and :population_density is a symbol. Symbols are slighty more efficent on the computer but they
# aren't a good choice if you want to display or use the key in some way. In this code we print the state to the CLI
# so we leave it a string.

# I answered the require_relative question in a comment above. If you are requiring a file you created, I think 
# you will mostly want require_relative, if you are importing a gem or a framework, just require is needed. 

# using a for loop! Although, I think that is less "ruby" .each is a good way 

# When looking at someone elses code, it is really important to "run" it in your head. The problems are really obvious
# once you see them, but just glancing at the code it looks like it is OK. 