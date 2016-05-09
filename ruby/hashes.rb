#pseudocode
# - Create new Hash
# - Set default value to "no value"
# - Prompt designer/user for name and store name data in name variable
# - Add name data to name key in hash
# - Prompt designer/user for email and store email data in email variable
# - Add email data to email key in hash
# - Prompt designer/user for phone number and store phone number data in phone number variable
# - Add phone number data to phone number key in hash
# - Prompt designer/user for age and store age data in age variable
# - Convert age data from string to integer
# - Add age data to age key in hash
# - Prompt designer/user for number of children and store number of children data in number of children variable
# - Convert number of children data from string to integer
# - Add number of children data to number of children key in hash
# - Prompt designer/user for decor theme and store decor theme data in decor theme variable
# - Add decor theme data to decor theme key in hash
# - Prompt designer/user for extra details and store extra details data in extra details variable
# - Conver extra details data from string to boolean
# - Add extra details data to extra details key in hash
# - Print hash to the screen
# - Prompt user if they wish to update a key and store data in update variable
# - If user would like to update a key (the user doesn't enter "none")
#	- Convert the key from string to symbol
#	- Prompt user to enter what they would like to update the value to and store data
#	- If the user selected the name key or email key or phone number key or decor theme key
#		- Update the corresponding value
#	- Or if the user selected the age key or number of children key
#		- Convert value to integer
#		- Update the corresponding value
#	- Or if the user selected the extra details key
#		- Convert value to boolean
#		- Update the extra details value
# - Print hash to the screen

# initialize hash
clientInfo = Hash.new
clientInfo.default = "no value" #default value

# name
puts "Enter name:"
name = gets.chomp
clientInfo[:name] = name

# email
puts "Enter email:"
email = gets.chomp
clientInfo[:email] = email

# phone number
puts "Enter phone number:"
phoneNum = gets.chomp
clientInfo[:phone_number] = phoneNum

# age
puts "Enter age:"
age = gets.chomp
age = age.to_i
clientInfo[:age] = age

# number of children
puts "Enter number of children:"
numChild = gets.chomp
numChild = numChild.to_i
clientInfo[:number_of_children] = numChild

# decor theme
puts "Enter decor theme:"
decorTheme = gets.chomp
clientInfo[:decor_theme] = decorTheme

# additional details
puts "Is a meeting necessary to discuss additional details? (Enter \"true\" or \"false\")"
extraDetails = gets.chomp
if extraDetails == "true"
	extraDetails = true
elsif extraDetails == "false"
	extraDetails = false
end
clientInfo[:extra_details] = extraDetails

# print current hash
puts "========================================================="
clientInfo.each {|key, data| puts "#{key}: #{data}"}
puts "========================================================="

# modify an item in hash
puts "If you would like to update a key, enter the key, otherwise type \"none\"."
update = gets.chomp
if update != "none"
	update = update.to_sym
	puts "What would you like to update the value to?"
	newValue = gets.chomp
	if update == :name || update == :email || update == :phone_number || update == :decor_theme
		clientInfo[update] = newValue
	elsif update == :age || update == :number_of_children
		newValue = newValue.to_i
		clientInfo[update] = newValue
	elsif update == :extra_details
		if newValue == "true"
			newValue = true
		elsif newValue == "false"
			newValue = false
		end
		clientInfo[update] = newValue
	end
end

# print updated hash
puts "========================================================="
puts "Updated hash:"
clientInfo.each {|key, data| puts "#{key}: #{data}"}
puts "========================================================="