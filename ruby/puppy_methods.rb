class Puppy

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