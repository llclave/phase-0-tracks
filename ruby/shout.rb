# 6.5 Release 1
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words.upcase + "!!!!!" + " :D"
#   end
# end

# DRIVER CODE
# puts "yell_angrily test:"
# puts Shout.yell_angrily("Nooo")
# puts "------------------------------"
# puts "yelling_happily test:"
# puts Shout.yelling_happily("yay")


#6.5 Release 3 - Mixin
module Shout
  def yell_angrily(words)
    words.upcase + "!!!" + " :("
  end

  def yelling_happily(words)
  	words.upcase + "!!!!!" + " :D"
  end
end

class Lion
	include Shout
end

class Announcer
	include Shout
end

# DRIVER CODE

lion = Lion.new
print "The lion yelled angrily: "
puts lion.yell_angrily("Grrrrrrrrrrr")
print "The lion yelled happily: "
puts lion.yelling_happily("roooooaaaarrrrr")

puts "\n"

announcer = Announcer.new
print "The announcer yelled happily: "
puts announcer.yelling_happily("ladies and gentlemen")
print "The announcer yelled angrily: "
puts announcer.yell_angrily("disappointing")

