module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words.upcase + "!!!!!" + " :D"
  end
end

# DRIVER CODE
puts "yell_angrily test:"
puts Shout.yell_angrily("Grrr")
puts "------------------------------"
puts "yelling_happily test:"
puts Shout.yelling_happily("yay")