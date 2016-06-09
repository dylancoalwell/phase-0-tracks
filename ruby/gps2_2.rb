
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take the items that are being input.
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list name, item name and optional quantity
# steps: 
  # input the name
  # input the quantity
  # print the item and quantity.
# output: string

# Method to remove an item from the list
# input: list name and item that you would like to remove
# steps: 
  # input the name
  # remove that item from the list.
  # print to the console the item name and that it was removed.
# output: string

# Method to update the quantity of an item
# input: list name, item name and quantity
# steps:
  # input name
  # input quantity
  # update the list
  # print a message to the console saying what item was updated and how it was updated.
# output: string

# Method to print a list and make it look pretty
# input: list name as a string
# steps: 
  # print the name of the list
  # print the name of the items
  # print the mame of the quantities 
# output: string


def create_grocery_list(items)
	grocery_list = {}
	grocery_array = items.split(" ")
	grocery_array.each do |item|
		grocery_list[item] = 1
	end
	grocery_list
end


def add_item(list_name, item, quantity)
	list_name[item] = quantity
end

def remove_item(list_name, item)
	list_name.delete(item)
end

def update_quantity(list_name, item, new_quantity)
	list_name[item] = new_quantity
end

def print_list(list_name, list_name_as_string)
	puts "#{list_name_as_string}:"
	list_name.each do |item, quantity|
		puts "#{item}: #{quantity}."
	end
end

p grocery_list = create_grocery_list("banana carrot")
add_item(grocery_list, "orange", 4)
p grocery_list
remove_item(grocery_list, "banana")
p grocery_list
update_quantity(grocery_list, "carrot", 6)
p grocery_list
print_list(grocery_list, "My Grocery List")