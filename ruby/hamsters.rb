#worked with Margaret Kamimoto

# checks if a string is a number
def checkifnumber(string)
	true if Float(string) rescue false
end

# obtains hamster name
puts "Hamster Name:"
hamster_name = gets.chomp 
# check if input is valid
while checkifnumber(hamster_name) == true
	puts "Error!"
	puts "Hamster Name:"
	hamster_name = gets.chomp
end

# obtains volume level
puts "Volume Level (1-10):"
volume_level = gets.chomp
volume_level = volume_level.to_i 
# check if input is valid
while volume_level < 1 || volume_level > 10
	puts "Error!"
	puts "Volume Level (1-10):"
	volume_level = gets.chomp
	volume_level = volume_level.to_i 
end

# obtains fur color
puts "Fur Color:"
fur_color = gets.chomp 
# check if input is valid
while checkifnumber(fur_color) == true
	puts "Error!"
	puts "Fur Color:"
	fur_color = gets.chomp
end

# obtains adoption info
puts "Good Candidate for Adoption (Y/N):"
candidate_adoption = gets.chomp 
# check if input is valid
while candidate_adoption != "Y" && candidate_adoption != "N" && candidate_adoption != "n" && candidate_adoption != "y"
	puts "Error!"
	puts "Good Candidate for Adoption (Y/N):"
	candidate_adoption = gets.chomp
end
# change input to boolean
candidate_adoption = candidate_adoption.upcase
if candidate_adoption == "Y"
	candidate_adoption = true
elsif candidate_adoption == "N"
	candidate_adoption = false
end	

# obtains age
puts "Estimated Age:"
age = gets.chomp 
# check if input is valid
while checkifnumber(age) == false
	puts "Error!"
	puts "Estimated Age:"
	age = gets.chomp
end
# if empty, set age equal to nil
if age == ""
	age = nil
else 
	age = age.to_i	
end

# prints data
puts "The hamster's name is #{hamster_name}!"
puts "The hamster's volume level is #{volume_level}."
puts "The hamster's fur color is #{fur_color}."
puts "Is the hamster a good candidate for adoption? #{candidate_adoption}"
puts "The hamster's age is #{age}!"

