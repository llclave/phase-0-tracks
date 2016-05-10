# Margaret Kamimoto & Lloyd Clave

# Release 0
def printing
	puts "This is our message before running the block!"
	yield("Lloyd", "Margaret")
	puts "This is our message after running the block!"
end

printing{ |creator1, creator2|
	puts "This is #{creator1} and #{creator2}'s first method that takes a block!!!"
}

# Release 1

fast_food_array = ["McDonald's", "Burger King", "Wendy's", "Taco Bell", "Sonic"]

harry_potter_hash = {
	daniel: "Harry Potter",
	emma: "Hermione Granger",
	rupert: "Ron Weasley",
	alan: "Severus Snape",
	gary: "Sirius Black"
}

fast_food_array.each { |franchise|
	puts "#{franchise}"
}
harry_potter_hash.each { |actor, characher|
	puts "#{actor.to_s.capitalize} played #{characher} in the Harry Potter movies."
}

puts "Original data:"
p fast_food_array

#iterate through the array with .map!
fast_food_array.map! { |franchise|
	franchise + " is yummy!"
}
puts "After .map! call:"
p fast_food_array


#Release 2

# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5). 
#Method: .delete_if
letters = ["a", "b", "c", "d", "e"]

numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5
}

puts "Before delete:"
p letters
p numbers

#iterate through the array and hash
letters.delete_if { |letter| 
	letter == "c"
}

numbers.delete_if { |symbol, number|
	number <= 2
}

puts "After delete:"
p letters
p numbers

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5). 
# Method: .keep_if

letters = ["a", "b", "c", "d", "e"]

numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5
}

puts "Before keeping:"
p letters
p numbers

letters.keep_if { |letter| 
	letter =~ /[aeiou]/
}

numbers.keep_if { |symbol, number|
	number <= 2
}

puts "After keeping"
p letters
p numbers

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
# Method: .select!

letters = ["a", "b", "c", "d", "e"]

numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5
}

puts "Before selecting:"
p letters
p numbers

letters.select! { |letter| 
	letter =~ /[aeiou]/
}

numbers.select! { |symbol, number|
	number <= 2
}

puts "After selecting"
p letters
p numbers

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops. 
# Method: .drop_while

letters = ["a", "b", "c", "d", "e"]

numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5
}

puts "Before removing:"
p letters
p numbers

newLetters = []

modifiedLetters = letters.drop_while { |letter| 
	letter != "c"
}

modifiedNumbers = numbers.drop_while { |symbol, number|
	number < 3
}

puts "After removing"
p modifiedLetters
p modifiedNumbers
