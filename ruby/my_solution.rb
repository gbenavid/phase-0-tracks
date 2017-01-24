# Virus Predictor

# I worked on this challenge [by myself, with: Jessie].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative

require_relative 'state_data' # This is basically just a C&P of the state_data.rb file. It links your pages. This is relative b/c it's in the same file. 

class VirusPredictor
  # REsponsible for: creating scopes that apply to all the methods listed incl. @state, @population... 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Basically the same thing as passing in string parameters except their instance variables. Invoking our logic

# 'private' declaration limits accessibility 
# b/c we don't want this logic to change
  
  # def virus_effects
  #   predicted_deaths(@population_density, @population, @state)
  #   speed_of_spread(@population_density, @state)
  # end


# private


# Responsible for: runs logic using any present parameters. Returns... how many people will die based on population density... prints a nice string that let's us know how many people will die in that state

  def predicted_deaths #(population_density, population, state)
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

  # Responsible for: letting us know how fast disease will spread throughout that state.
  def speed_of_spread #(population_density, state) #in months
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

STATE_DATA.each do |state, keyValue| 
  death = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  death.predicted_deaths
  death.speed_of_spread
end

# STATE_DATA.each do |state, data|
#  deaths = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#  deaths.predicted_deaths
#  deaths.speed_of_spread
# end 

#=======================================================================

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# The two synaxes are 1. the "strings" separated by commas in the state data, and 2. the key value pairs which use the rocket syntax, which is nested
# require_relative basically does a C&P of your file, it has a relative path? require can be used for anything anywhere  using a google link.
# iterate through a hash using .each, .map, for loop, and maybe even a while and until loop.
# We realized that allot of the code was redundant when refactoring because they were already set in the initialize method. 
# Other than being very cynical and actually kind of terrifying, this release really helped me understand the use .each for a hash and iterating  