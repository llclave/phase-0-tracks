# Pair: Margaret Kamimoto and Lloyd Clave

def build_array(item_one, item_two, item_three)
	array = [item_one, item_two, item_three]
end

def add_to_array(array, item)
	array << item
end

# initialize empty array
myArray = Array.new
p myArray

# add 5 items to array
myArray << "Fruit Punch"
myArray.push("Gray")
myArray.insert(-1, 2015, "mango")
myArray.unshift(true)
p myArray

# delete item at index 2
myArray.delete_at(2)
p myArray

# insert a new item at index 2
myArray.insert(2, "new item")
p myArray

# remove first item of the array without having to refer to the index
myArray.shift
p myArray

# ask the array if it includes a certain item
check =  myArray.include?("Fruit Punch")
p "Does this array include \'Fruit Punch\'?: #{check}"

# initialize new array with items already in it
newArray = ["greetings", "hi", "aloha"]

# add the two arrays together and store them in a new variable
combinedArray = myArray + newArray
p combinedArray

# call method build_array
p build_array(1, "two", nil)

# call method add_to_array
p add_to_array([], "a")

p add_to_array(["a", "b", "c", 1, 2], 3)

