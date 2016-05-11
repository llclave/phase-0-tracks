# Pseudocode for generateSpyName method
# - accept a string argument of a full name
# - create strings for capital vowels, lowercase vowels, capital consonants, and lowercase consonants
# - split the full name argument into an array of words/names
# - reverse the array of words/names to swap first and last names
# - combine the reversed array into a single string named reverseName
# - initialize i variable to 0
# - until the i variable is equal to the length of the reverseName string do the following to each character in the reverseName string
#	- if the current character is a capital vowel do the following
#		- if the current character is a U
#			- change the character to an A
#		- otherwise change the current character to the next capital vowel
#	- if the current character is a lowercase vowel do the following
#		- if the current character is a u
#			- change the character to an a
#		- otherwise change the current character to the next lowercase vowel
#	- if the current character is a capital consonant do the following
#		- if the current character is a Z
#			- change the character to an B
#		- otherwise change the current character to the next capital consonant
#	- if the current character is a lowercase consonant do the following
#		- if the current character is a z
#			- change the character to an b
#		- otherwise change the current character to the next lowercase consonant
#	- add 1 to the i variable
# - output new string

# method that returns your spy alias
def generateSpyName(realFullName)
	# set conconant and vowel strings
	vowelsCap = "AEIOU"
	vowelsLow = "aeiou"
	consonantCap = "BCDFGHJKLMNPQRSTVWXYZ"
	consonantLow = "bcdfghjklmnpqrstvwxyz"
	
	# splits full name into an array of words and reverses the array (aka swaps first and last name)
	splitName = realFullName.split(" ")
	splitName.reverse!

	# combines reversed array into a single string
	reverseName = splitName.join(" ")
	# reverseName = ""
	# currentIndex = 0
	# while currentIndex < splitName.length
	# 	reverseName << splitName[currentIndex]
	# 	reverseName << " "
	# 	currentIndex += 1
	# end

	# flow control that determines how each character is modified.
	i = 0
	until i == reverseName.length
		
		# capital vowels are modified to the next vowel
		if vowelsCap.include?(reverseName[i])
			if reverseName[i] == "U"
				reverseName[i] = "A"
			else			
				location = vowelsCap.index(reverseName[i])
				reverseName[i] = vowelsCap[location + 1]
			end
		# lowercase vowels are modified to the next vowel
		elsif vowelsLow.include?(reverseName[i])
			if reverseName[i] == "u"
				reverseName[i] = "a"
			else			
				location = vowelsLow.index(reverseName[i])
				reverseName[i] = vowelsLow[location + 1]
			end

		# capital consonants are modified to the next consonant
		elsif consonantCap.include?(reverseName[i])
			if reverseName[i] == "Z"
				reverseName[i] = "B"
			else			
				location = consonantCap.index(reverseName[i])
				reverseName[i] = consonantCap[location + 1]
			end	
		# lowercase consonants are modified to the next consonant
		elsif consonantLow.include?(reverseName[i])
			if reverseName[i] == "z"
				reverseName[i] = "b"
			else			
				location = consonantLow.index(reverseName[i])
				reverseName[i] = consonantLow[location + 1]
			end

		# all other characters stay the same (this line isn't necessary but I included it to explain my logic)
		else
			reverseName[i] = reverseName[i]

		end

		i += 1
	end
	fakeName = reverseName # this is the implicit return
end

# User Interface
puts "Initializing spy name generator!"
puts "===================================================================="
realName = ""
storedAlias = Hash.new 		# hash that will store real names and corresponding fake names

# loop will continue to provide fake names for inputted names until the user types "quit"
until realName.downcase == "quit"
	puts "\n"
	puts "Enter your full name or type 'quit' to quit: "
	realName = gets.chomp
	puts "\n"

	# if the user does not enter "quit", the fake name will be generated, printed, and added into the hash
	if realName.downcase != "quit"
		puts "Your new alias is: "
		fakeName = generateSpyName(realName)
		puts fakeName
		puts "===================================================================="
		storedAlias[realName] = fakeName

	# if the user wants to quit the program, real and fake names are printed from the hash
	else
		puts "Preparing to print aliases and real names."
		sleep(1)
		puts "."
		sleep(1.5)
		puts ".."
		sleep(1.5)
		puts "..."
		sleep(1)
		puts "\n"

		# all fake and real names are printed using .each method
		storedAlias.each { |real, fake|
			puts "#{fake} is actually #{real}!"
		}
		
		sleep(1.5)
		puts "\n"
		puts "Terminating program!!!"
	end
end

