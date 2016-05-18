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
		puts "Initializing car instance type: #{type}..."
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

