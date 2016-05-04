# method to check if a string is a number
def checkifnumber(string)
	true if Float(string) rescue false
end

# obtain vampire name
puts "What is your name?"
name = gets.chomp
#check if name input is valid
while checkifnumber(name) == true
	puts "Error! Please enter an actual name!"
	puts "---------------------------------------"
	puts "What is your name?"
	name = gets.chomp
end

# obtain age
puts "How old are you?"
age = gets.chomp
# check if input is valid
while checkifnumber(age) == false
	puts "Error! Please enter a valid age!"
	puts "---------------------------------------"
	puts "How old are you?"
	age = gets.chomp
end

# obtain birth year
puts "What year were you born?"
birthYear = gets.chomp
# check if input is valid
while checkifnumber(birthYear) == false
	puts "Error! Please enter a valid age!"
	puts "---------------------------------------"
	puts "How old are you?"
	birthYear = gets.chomp
end

# obtain garlic bread boolean
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlicBread = gets.chomp
# check if input is valid
while garlicBread != "Y" && garlicBread != "N" && garlicBread != "n" && garlicBread != "y"
	puts "Error! Please enter \"Y\" or \"N\""
	puts "---------------------------------------"
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
	garlicBread = gets.chomp
end

# obtain health insurance boolean
puts "Would you like to enroll in the company’s health insurance? (Y/N)"
healthInsurance = gets.chomp
# check if input is valid
while healthInsurance != "Y" && healthInsurance != "N" && healthInsurance != "n" && healthInsurance != "y"
	puts "Error! Please enter \"Y\" or \"N\""
	puts "---------------------------------------"
	puts "Would you like to enroll in the company’s health insurance? (Y/N)"
	healthInsurance = gets.chomp
end

puts "\n"
puts "-Interview Summary-"
puts "What is your name?: #{name}"
puts "How old are you?: #{age}"
puts "What year were you born?: #{birthYear}"
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N): #{garlicBread}"
puts "Would you like to enroll in the company’s health insurance? (Y/N): #{healthInsurance}"
puts "\n"

# change garlicBread input to boolean
garlicBread = garlicBread.upcase
if garlicBread == "Y"
	garlicBread = true
elsif garlicBread == "N"
	garlicBread = false
end

# change healthInsurance input to boolean
healthInsurance = healthInsurance.upcase
if healthInsurance == "Y"
	healthInsurance = true
elsif healthInsurance == "N"
	healthInsurance = false
end

# check if age and birth year make sense
age = age.to_i
birthYear = birthYear.to_i
checkAge = 2016 - birthYear
if checkAge == age
	ageVerfication = true
else
	ageVerfication = false
end

# print result
if name == "Drake Cula" || name =="Tu Fang"
	puts "Definitely a vampire."
elsif ageVerfication == true && (garlicBread == true || healthInsurance == true)
	puts "Probably not a vampure"
elsif ageVerfication == false && garlicBread == false && healthInsurance == false
	puts "Almost certainly a vampire."
elsif ageVerfication == false && (garlicBread == false || healthInsurance == false)
	puts "Probably a vampire."
else
	puts "Results inconclusive."
end