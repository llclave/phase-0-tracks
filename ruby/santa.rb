# SANTA CLASS
class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!" 
	end

	# attribute-changing methods
	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.insert(@reindeer_ranking.length - 1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
	end

	# def gender=(gender)
	# 	@gender = gender
	# end

	# getter methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# check method for testing
	def check
		print "reindeer order: #{@reindeer_ranking} \n"
		puts "gender: #{@gender}"
	end

end

# TEST CODE
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate")

# Driver Code Examples
# santas_example_list_1 = []
# santas_example_list_1 << Santa.new("agender", "black")
# santas_example_list_1 << Santa.new("female", "Latino")
# santas_example_list_1 << Santa.new("bigender", "white")
# santas_example_list_1 << Santa.new("male", "Japanese")
# santas_example_list_1 << Santa.new("female", "prefer not to say")
# santas_example_list_1 << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas_example_list_1 << Santa.new("N/A", "N/A")
# puts santas_example_list_1

# santas_example_list_2 = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas_example_list_2 << Santa.new(example_genders[i], example_ethnicities[i])
# end
# puts santas_example_list_2

# DRIVER CODE
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = genders.length.times.collect { |i| 
	Santa.new(genders[i], ethnicities[i])
}
puts santas

puts "======"
puts "Before change"
puts "age: #{santas[1].age}"
santas[1].check

puts "------"
puts "Changing"
puts "This santa has aged, gets mad at Vixen, and changed genders to '???'"
santas[1].celebrate_birthday
santas[1].get_mad_at("Vixen")
santas[1].gender = "???"
puts "------"

puts "After change"
puts "age: #{santas[1].age}"
santas[1].check
puts "ethnicity: #{santas[1].ethnicity}"
