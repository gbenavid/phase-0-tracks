# Method to create a list
def grocery_list
  puts "Enter items: "
  list = {
    lemons: 10, 
    tomatoes: 3,
  }
  input = gets.chomp
end

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
def add_items(list, item_name, quantity)
# input: list, item name, and optional quantity
# steps:
  item_name.to_sym
  list[item_name] = quantity
  list
end
# output: 

# Method to remove an item from the list
def remove_item(list, item_name)
  list[item_name].delete(item_name.to_sym)
  list
end

# input:
# steps:
# output:

# Method to update the quantity of an item
def update_quantity(list, item_name, quantity)
  item_name.to_sym
  list[item_name] = quantity
  list
end
# input:
# steps:
# output:

# Method to print a list and make it look pretty
def print_list(list)
  list.each do |item, quantity|
    puts "Need: #{item} at this quantity: #{quantity}"
  end
end
# input:
# steps:
# output:

grocery_list
puts "Add an item to the list: "
item_name = gets.chomp
puts "Add a quantity: "
quantity = gets.to_i
add_items(grocery_list, item_name, quantity)
puts "update quantity: "
quantity = gets.to_i
update_quantity(grocery_list, item_name, quantity)
print_list(list)