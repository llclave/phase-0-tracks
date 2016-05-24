# Virus Predictor

# I worked on this challenge with: Margaret Kamimoto.
# We spent [4] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is to link local files to the program. require is to link outside sources to the program.
#
require_relative 'state_data'

class VirusPredictor
  # The method initializes the objects and takes in three arguments. Sets up class variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # private
  # The method calls two methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # The method takes in three arguments. Depending on the population_density variable it will determine the number_of_deaths. It returns a string with the number of deaths predicted. 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      value = 0.4
    elsif @population_density >= 150
      value = 0.3
    elsif @population_density >= 100
      value = 0.2
    elsif @population_density >= 50
      value = 0.1
    else
      value = 0.05
    end
    number_of_deaths = (@population * value).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # The method takes in two arguments. Depending on the population_density it determines the speed of spread. The output is a string that returns the speed of spread.
  def speed_of_spread #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Pseudocode

# Create a report method
#   input: hash 
#   steps:
#     Loop through each key and value pair through each hash
#       Use key input to make new object.
#       Call virus effect method on state.
#   output: Object

def report(hash)
  hash.each do |state, info|
    state_object = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    state_object.virus_effects 
  end
end

report(STATE_DATA)

# def reportforonestate(state)
#   state_object = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#   state_object.virus_effects 
# end

# STATE_DATA.each { |state, info|
#   reportforonestate(state)
# }

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# One hash uses a string for its key and it uses a hash rocket to store the value. The other uses symbols for its keys and uses a colon to store its values.

# What does require_relative do? How is it different from require?
# require_relative imports lines of code from a local file in your directory. It is different from require because require can import code from third-party libraries outside of your local directory.

# What are some ways to iterate through a hash?
# You can use different loops such as .each, .select, .each_key, and .fetch. You can also use regular while, until, and for loops.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The original arguments had instance scope and were already available throughout the instance methods.

# What concept did you most solidify in this challenge?
# I improved the most on refactoring and recognizing how to cleaning up code.



