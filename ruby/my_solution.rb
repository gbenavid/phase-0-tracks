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
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
# private

# Responsible for: runs logic using any present parameters. Returns... how many people will die based on population density... prints a nice string that let's us know how many people will die in that state
def predicted_deaths
  factor = case @population_density
  when 0...50 then 0.05
  when 50...100 then 0.1
  when 100...150 then 0.2
  when 150...200 then 0.3
  else 0.4
  end
  number_of_deaths = (@population * factor).floor
  p "#{@state} will lose #{number_of_deaths} people in this outbreak"
end
  # Responsible for: letting us know how fast disease will spread throughout that state.
def speed_of_spread
    speed = 0.0
    factor = case @population_density
    when 0...50 then speed += 2.5
    when 50...100 then speed += 2
    when 100...150 then speed += 1.5
    when 150...200 then speed += 1
    else += 0.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA.each do |state, keyValue| 
#   VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
# end
STATE_DATA.each do |state, data|
 deaths = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
 deaths.predicted_deaths
 deaths.speed_of_spread
end 
# Reflection Section
=begin
  The two synaxes are 1. the "strings" separated by commas in the state data, and 2. the key value pairs which use the rocket syntax, which is nested
  require_relative basically does a C&P of your file, it has a relative path? require can be used for anything anywhere  using a google link.
  iterate through a hash using .each, .map, for loop, and maybe even a while and until loop.
  We realized that allot of the code was redundant when refactoring because they were already set in the initialize method. 
  Other than being very cynical and actually kind of terrifying, this release really helped me understand the use .each for a hash and iterating
=end
