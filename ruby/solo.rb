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
#		car speed is updated to carspeed plus integer argument
# - Brake (integer argument)
#		IF integer argument is greater than or equal to car speed
#			car speed is updated to 0 and moving attribute is set to false
#		ELSE
#			car speed is updated to carspeed minus integer argument
# - Stop
#		car speed is updated to 0
# - Turn (string argument)
#		IF string argument is equal to left
#			num is set to the index of the current direction in direction_array minus 1
#			car direction is updated to string argument
#		ELSIF string argument is equal to right
#			car direction is set to North IF current direction is West
#			IF current direction is not West
#				num is set to the index of the current direction in direction_array plus 1
#				car direction is updated to string argument
# 		ELSIF string argument is set to u turn
#			num is set to the index of the current direction in direction_array minus 2
#			car direction is updated to string argument
#		ELSE
#			print error






