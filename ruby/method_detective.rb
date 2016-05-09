# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
puts "iNvEsTiGaTiOn".swapcase

# "zom".insert(1 ,"o")
# => “zoom”
puts "zom".insert(1 ,"o")

# "enhance".center(15)
# => "    enhance    "
puts "enhance".center(15)

# "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
puts "Stop! You’re under arrest!".upcase

# "the usual".concat(" suspects")
#=> "the usual suspects"
puts "the usual".concat(" suspects")

# " suspects".prepend("the usual")
# => "the usual suspects"
puts " suspects".prepend("the usual")

# "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".slice!(0)
# note: the slice! method returns the removed character but the string variable stores the edited string
# => "he mystery of the missing first letter"
str = "The mystery of the missing first letter"
str.slice!(0) 
puts str
# another way:
# "The mystery of the missing first letter"[1..-1]
puts "The mystery of the missing first letter"[1..-1]

# "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!".squeeze(" ")
# another method:
# "Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
puts "Elementary,    my   dear        Watson!".gsub(/\s+/, " ")

# "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts "z".ord

# "How many times does the letter 'a' appear in this string?".count("a")
# => 4
puts "How many times does the letter 'a' appear in this string?".count("a")

#.replace method can work on any of these except for the last two