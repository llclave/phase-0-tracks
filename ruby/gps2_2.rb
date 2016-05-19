# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity to 1
  # Split input string into an array of items
  # Take each item and add them to a hash
  # print the list to the console [can you use one of your other methods here?] - using each method
# output: [what data type goes here, array or hash?] - hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # add item to hash with optional quantity
# output: modified hash with item added

# Method to remove an item from the list
# input: item name to delete and optional quantity
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
# input: none
# steps:
  # take each key and value pair and print
# output: pretty hash