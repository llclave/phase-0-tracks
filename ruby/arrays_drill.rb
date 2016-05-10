# Pair: Margaret Kamimoto and Lloyd Clave

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
