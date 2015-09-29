# Virus Predictor

# I worked on this challenge with Nathan Liu.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
## Used for linking/loading files' whose location
# is in relative to the current file
# The difference against the require_relative method is that it is a complement to the "require" method 
# that load the built-in ruby extension or libraries.
#
require_relative 'state_data'

class VirusPredictor
# Calls three arguments and initializes an instance variable of each.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Calls two other methods in the VirusPredictor, predicted_deaths and speed_of_spread 
# which call the required instance variables.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# Uses the population density through conditional statements to determine 
# the number of predicted deaths and prints a sentence stating how many deaths are predicted in a particular state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    deaths_factors = [0.05, 0.1, 0.2, 0.3, 0.4]
    if @population_density/50 > 4
    number_of_deaths = 0.4
    else
    deaths_factors = [0.05, 0.1, 0.2, 0.3, 0.4]
    number_of_deaths = (@population * deaths_factors[@population_density/50]).floor
    end
    #   factor = 0.4
    # elsif @population_density >= 150
    #   factor = 0.3
    # elsif @population_density >= 100
    #   factor = 0.2
    # elsif @population_density >= 50
    #   factor = 0.1
    # else
    #   factor = 0.05
    # end
    # number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Uses the population density to determine how many months it will take to spread across the state. 
#  Completes the sentence stating how long that will take.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # Calculate the population density based on factors of 50 inversely related 
    # to the speed of the spread of disease by a factor of .5.
    
    # The speed of spread is defined in different ranges. Each range covers 50 in density difference starting at 0. 
  # Example: 15 density falls in range 0, 50 density falls in range 1, 100 density falls in range 2, etc. 
    if @population_density/50 > 4
      speed = 0.5
    else
      speeds = [2.5, 2, 1.5, 1, 0.5]
      speed = speeds[@population_density/50]
      endspeed = speeds[@population_density/50]
    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, property|
  new_state = VirusPredictor.new(state, property[:population_density], property[:population])
  new_state.virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The first one, "state_name" => hash_key, is the standard hash syntax.  The second, population : integer, (p242 in Well-Grounded Rubyist)
#  utilizes a symbol for population and is shorthand for :population => integer.
# What does require_relative do? How is it different from require?
#   Require_relative references a file in relation to the current one.  Require loads a file that is a built-in extension or library.
# What are some ways to iterate through a hash?
# each, map, etc, like an array.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variables were unnecessary, since they were already defined as instances in initialization.
# What concept did you most solidify in this challenge?
# Hashes and how to call them and iterate though them is still confusing to me, but I'm a little closer to getting it.
# It was helpful to refactor and see how that can be done.  Usually it already took everything I took to get the initial solution.

#=======================================================================
# Reflection Section