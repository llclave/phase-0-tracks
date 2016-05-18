# Class Car Design
# initialize with type of car passed
# moving attribute defaulted to false
# car speed defaulted to 0 mph
# direction_array set to [North, East, South, West]
# direction defaulted to North aka direction_array[1]

# Attributes
# - Type of car (string - read)
# - Moving? (boolean - read and write)		
# - Car speed (integer - read and write)
# - Direction (string - read and write)

# Methods
# - Accelerate (integer argument)
#		car speed is updated to carspeed plus integer argument IF integer argument is greater than 0
#		IF car speed is not 0
#			moving attribute is set to true
#		ELSE moving attribute is set to false
#		car speed
# - Brake (integer argument)
#		IF integer argument is greater than 0
#			IF integer argument is greater than or equal to car speed
#				car speed is updated to 0 and moving attribute is set to false
#			ELSE
#				car speed is updated to carspeed minus integer argument
# - Stop
#		car speed is updated to 0
# 		moving attribute is set to false
# - Turn (string argument)
#		IF string argument is equal to left
#			new_direction is set to the index of the current direction in direction_array minus 1
#			car direction is updated to new_direction in direction array
#		ELSIF string argument is equal to right
#			IF current direction is not West
#				new_direction is set to the index of the current direction in direction_array plus 1
#				car direction is updated to new_direction in direction array
#			ELSE
#				car direction is updated to North
# 		ELSIF string argument is set to u turn
#			new_direction is set to the index of the current direction in direction_array minus 2
#			car direction is updated to new_direction in direction array
# - moving?
#		IF the car is moving this will return true otherwise it will return false

# CAR CLASS 
class Car
	attr_reader :type
	attr_accessor :moving, :speed, :direction

	def initialize(type)
		puts "Preparing #{type}..."
		@type = type
		@moving = false
		@speed = 0

		@direction_array = ["North", "East", "South", "West"]
		@direction = @direction_array[0]
	end

	def accelerate(speed_up_int)
		@speed = @speed + speed_up_int if speed_up_int > 0
		if @speed != 0
			@moving = true
		else
			@moving = false
		end
		@speed
	end

	def brake(slow_down_int)
		if slow_down_int > 0
			if slow_down_int >= @speed
				@speed = 0
				@moving = false
			else
				@speed = @speed - slow_down_int
			end
		end
		@speed
	end

	def stop
		@speed = 0
		@moving = false
	end

	def turn(direction_string)
		if direction_string == "left"
			new_direction = @direction_array.index(@direction) - 1
			@direction = @direction_array[new_direction]
		elsif direction_string == "right"
			if @direction != "West"
				new_direction = @direction_array.index(@direction) + 1
				@direction = @direction_array[new_direction]
			else
				@direction = @direction_array[0]
			end
		elsif direction_string == "u turn"
			new_direction = @direction_array.index(@direction) - 2
			@direction = @direction_array[new_direction]
		end
	end

	def moving?
		@moving ? true : false
	end
end

# DRIVER/TEST CODE
# car = Car.new("Volkswagon Beetle")
# puts "Speed Tests:"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.accelerate(50)
# puts "- accelerate by 50 -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.brake(24)
# puts "- brake by 24 -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.stop
# puts "- stop -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"

# puts "\n"
# puts "Direction Change Tests:"
# car.turn("left")
# puts "- turn left -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("left")
# puts "- turn left -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("left")
# puts "- turn left -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("left")
# puts "- turn left -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("right")
# puts "- turn right -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("right")
# puts "- turn right -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("right")
# puts "- turn right -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("right")
# puts "- turn right -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("u turn")
# puts "- u turn -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("u turn")
# puts "- u turn -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("right")
# puts "- turn right -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("u turn")
# puts "- u turn -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"
# car.turn("u turn")
# puts "- u turn -"
# puts "#{car.type} | moving:#{car.moving?} | speed:#{car.speed} | direction:#{car.direction}"



# USER INTERFACE
car_array = Array.new

puts "Hi! Feel free to test drive any car we have!"

action = ""
while action != "q"
	puts "Enter the model you would like to drive!"
	car_type = gets.chomp
	puts "\n"
	car = Car.new(car_type)
	car_array << car
	action = ""
	puts "You are now in your new car!"
	puts "\n"

	until action == "next" || action == "q"
		puts "Your #{car.type}'s status:"
		if car.moving?
			puts "You are driving #{car.speed} mph, #{car.direction}!"
			puts "Enter what you would like to do: (accelerate, brake, stop, turn)"
			puts "Enter 'next' to test drive a new car or 'q' to end program."
			action = gets.chomp.downcase
			until action == "accelerate" || action == "brake" || action == "stop" || action == "turn" || action == "next" || action == "q"
				puts "Invalid input! Please enter 'accelerate', 'brake', 'stop', 'turn', or 'next' !"
				action = gets.chomp.downcase
			end
		else
			puts "You are facing #{car.direction} and you are currently not moving!"
			puts "Enter what you would like to do: (accelerate, turn)"
			puts "Enter 'next' to test drive a new car or 'q' to end program."
			action = gets.chomp.downcase
			until action == "accelerate" || action == "turn" || action == "next" || action == "q"
				puts "Invalid input! Please enter 'accelerate', 'brake', 'stop', 'turn', or 'next' !"
				action = gets.chomp.downcase
			end
		end

		break if action == "next" || action == "q"

		case action

		when "accelerate"
			puts "Enter a number to accerate by (mph):"
			speedmph = gets.chomp.to_i
			until speedmph >= 0
				puts "Enter a valid positive number!"
				speedmph = gets.chomp.to_i
			end
			car.accelerate(speedmph)
			puts "You are speeding up by #{speedmph} mph!"

		when "brake"
			puts "Enter a number to brake by (mph):"
			brakemph = gets.chomp.to_i
			until speedmph >= 0
				puts "Enter a valid positive number!"
				brakemph = gets.chomp.to_i
			end
			car.brake(brakemph)
			puts "You are braking by #{brakemph} mph."

		when "stop"
			puts "You are slowing down to a stop!"
			car.stop

		when "turn"
			puts "Enter a direction to turn: (left, right, u turn, none)"
			dir = gets.chomp.downcase
			until dir == "left" || dir == "right" || dir == "u turn" || dir = "none"
				puts "Please enter 'left', 'right', 'u turn', or 'none' "
				dir = gets.chomp.downcase
			end
			if dir == "left" || dir == "right"
				puts "You are turning #{dir}!"
				car.turn(dir)
			elsif dir == "u turn"
				puts "You are making a #{dir}!"
				car.turn(dir)
			else
				puts "You will continue driving the same direction!"	
			end
		end
		puts "\n"
	end
	puts "-----------------------------------------------------"
	break if action == "q"
end

puts "======================================================"
puts "List of cars and their statuses:"

car_array.each { |car|
	if car.moving?
		puts "The #{car.type} is driving #{car.speed} mph, in the #{car.direction} direction!"
	else
		puts "The #{car.type} is facing the #{car.direction} direction but is stopped!"
	end
}










