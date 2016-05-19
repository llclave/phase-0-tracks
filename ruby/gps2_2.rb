# Names: Margaret Kamimoto & Lloyd Clave

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default to string
  # Split input string into an array of items
  # Take each item and add them to a hash
  # print the list to the console [can you use one of your other methods here?] - using each method
# output: [what data type goes here, array or hash?] - hash

# Method to add an item to a list
# input: item name, hash list, and optional quantity
# steps: 
  # add item to hash with optional quantity
# output: modified hash with item added

# Method to remove an item from the list
# input: item name to delete, hash list, and optional quantity
# steps:
  # IF optional quantity is greater than the current quantity
    # delete key and value from hash
  # ELSE
    # mofify value to current value minus optional quantity
# output: modified hash with specified item deleted

# Method to update the quantity of an item
# input: item to modify and quantity to modify to
# steps:
  # set the item to modify to the quantity
# output: modified hash with new quantity

# Method to print a list and make it look pretty
# input: hash
# steps:
  # take each key and value pair and print
# output: pretty hash


def create_a_list(grocery_items="")
	grocery_list = Hash.new("Item is not in list")
	grocery_items.split(" ").each do |item|
		grocery_list[item] = 1
	end
	grocery_list
end
def add_item(item, grocery_list, quantity = 1)
	grocery_list[item] = quantity
end
def remove_item(item, grocery_list)
	grocery_list.delete(item)
end
def update_quantity(item, grocery_list, new_quantity)
	grocery_list[item] = new_quantity
end
def print_list(grocery_list)
	grocery_list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
end

# DRIVER CODE
# list = create_a_list("Carrots apples cereal pizza")
# p list
# add_item("Pear", list)
# add_item("Tomato", list, 5)
# remove_item("Carrots", list)
# update_quantity("Pear", 10, list)
# print_list(list)
# p list

new_list = create_a_list("Lemonade Tomatoes Onions" )
add_item("Ice Cream", new_list, 4)
update_quantity("Lemonade", new_list, 2)
update_quantity("Tomatoes", new_list, 3)
print_list(new_list)
puts "Remove Lemonade"
remove_item("Lemonade", new_list)
print_list(new_list)
puts "Update Quantity to 1"
update_quantity("Ice Cream", new_list, 1)
print_list(new_list)


