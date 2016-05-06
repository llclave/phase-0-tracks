# Pair: Lloyd Clave & Margaret Kamimoto

#Release 2

# encrypt method and pseudocode

# - Define a method called encrypt that takes a string and outputs an encrypted string
# 	- Set index variable to 0
# 	- Until index variable is equal to the length of the string input variable do the following:
# 		- If the current character is equal to "z" 
#			-  Make the current character equal to "a"
# 		- Or if the current character is equal to a space 
# 			- Make the current character equal to a space
# 		- Otherwise 
# 			- Set the current character to the next character alphabet 
# 		- Increase index by 1
# 	- Return new string

def encrypt(string)
	index = 0
	until index == string.length

		# accounts for edge cases, uppercase, lowercase, and numbers
		if string[index] == "z" 
			string[index] = "a"
		elsif  string[index] == "Z"
			string[index] = "A"
		elsif string[index] == "9"
			string[index] = "0"	
		elsif string[index] == " "
			string[index] = " "
		else # else run next method
			string[index] = string[index].next
		end
		index += 1
	end
	string
end


# decrypt method and pseudocode

# - Define a method called decrypt that takes a string input and outputs a decrypted string
# 	- Define a method called before that takes a character input and outputs the previous character
# 		- Set variable alphabet equal to "abcdefghijklmnopqrstuvwxyz"
# 		-If character is equal to a space
#			- Return character
# 		- Othewise
#			- Locate current index of character input within alphabet string and set that value into a current index variable
# 			- Set new index variable equal to current index variable minus one 
# 			- Set character variable to the new index character within the alphabet string
#	- Set index variable to 0
# 	- Until index variable is equal to the length of the string input variable do the following:
# 		- Set current character of string at index equal to the current character of string at index minus 1
# 		- Increase index by 1
# 		- Return new string

def decrypt(string)

	def before(character)
		alphabetdow = "abcdefghijklmnopqrstuvwxyz"
		alphabetup = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		numbers = "0123456789"
		
		if character == " "
			return character
		elsif (numbers.include? character) # works with numbers
			currentIndexofChar = numbers.index(character)
			newIndexofChar = currentIndexofChar - 1
			character = numbers[newIndexofChar]
		elsif (alphabetdow.include? character) # works with lowercase characters
			currentIndexofChar = alphabetdow.index(character)
			newIndexofChar = currentIndexofChar - 1
			character = alphabetdow[newIndexofChar] 
		else # works with uppercase characters
			currentIndexofChar = alphabetup.index(character)
			newIndexofChar = currentIndexofChar - 1
			character = alphabetup[newIndexofChar]  	
		end
	end

	index = 0
	until index == string.length # until loop that uses before method above
		string[index] = before(string[index])
		index += 1
	end
	string	
end

# puts "encrypt"
# stringen = gets.chomp
# puts encrypt(stringen)

# puts "======="

# puts "decrypt"
# stringdec = gets.chomp
# puts decrypt(stringdec)

#==============================================================================

#Release 3

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")

#==============================================================================

#Release 4

# puts decrypt(encrypt("swordfish"))
=begin

In this line of code we have the "swordfish" string. It's the argument of the encrypt method. So the method, encrypt, encrypts it by going through each
character and changing it to the next character in the alphabet. The result / output is a new encrypted string, "txpsegjti". This output becomes the 
argument of the decrypt method. Then the decrypt method decrypts the argument by going through each character and changing it to the previous character 
in the alphabet. The result / output is a new decrypted string, "swordfish", which is printed. This nested method works because the first method that runs, encrypt, 
outputs a string, which is an acceptable argument for the decrypt method. It uses the logic of a math problem.

=end

#=========================================================================================

#Release 5

# - Print message that asks user whether they want to encrypt or decrypt password
# - Accept user input
# - Force all characters to be lower case in the user input
# - While user input is not encrypt and it is not decrypt
#	- Print error message and ask for another input
# 	- Accept another user input
# 	- Force all characters to be lower case in the user input
# - Print message that asks the user to input a password
# - Accept password input
# - If the user input was decrypt
#	- Print and call the decrypt method with the password input as the argument
# - Or if the user input was encrypt
#	- Print and call the encrypt method with the password input as the argument

# Begin Driver Code
puts "Would you like to encrypt or decrypt your password?"

answer = gets.chomp
answer = answer.downcase
# error checking
while answer != "decrypt" && answer != "encrypt" 
	puts "ERROR! Enter encrypt or decrypt!!!"
	answer = gets.chomp
	answer = answer.downcase
end

puts "Enter password:"

password = gets.chomp

# control flow to call method
if answer == "decrypt"
	puts decrypt(password)
elsif answer == "encrypt"
	puts encrypt(password)
end





