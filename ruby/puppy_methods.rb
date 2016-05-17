# Names: Margaret Kamimoto & Lloyd Clave

class Puppy

  def initialize
	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_bark)
  	num_bark.times {
  		puts "Woof!"
  	}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	if human_years <= 2.0
  		return dog_years = 10.5 * human_years
  	elsif human_years > 2.0
  		return dog_years = (10.5 * 2.0) + ((human_years - 2.0) * 4.0)
  	end
  end

  def sit(name)
  	puts "#{name} *sits*"
  end

end

# DRIVER CODE
pup1 = Puppy.new

pup1.fetch("frisbee")
pup1.speak(8)
pup1.roll_over
puts pup1.dog_years(1.5)
puts pup1.dog_years(5)
pup1.sit("Beethoven")


class Chef
	def initialize
		puts "Initializing new chef instance..."
	end
	def cook
		puts "Chef is cooking!"
	end
	def cut(ingredients)
		puts "Chef is cutting #{ingredients}!"
	end
end

# chef = Chef.new
# chef.cook("Ratatouille")
# chef.cut("Potato")

chefs = 50.times.collect {Chef.new}
# puts chefs
# p chefs.length
# p chefs.class

chefs.each{ |chef|
 	chef.cook
 	chef.cut("Chicken")
}

