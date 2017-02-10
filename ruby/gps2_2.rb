# GPS 2.2 - Ruby
def create_list(string)
  list = {}
  items_array = string.split(' ')
  items_array.each do |i|
    list[i] = 1
  end
  list
end
def add_item(list, item, quantity)
  list[item] = quantity
  list
end
def remove_item(list, item)
  list.delete(item)
  list
end
def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end
def print_list(list)
  list.each {|item, quantity| puts "grocery item: #{item} x #{quantity}"}
end
# Release 2: Test your solution
grocery_list = create_list("lemonade tomatoes onions ice-cream")
update_quantity(grocery_list, "lemonade", 2)
update_quantity(grocery_list, "tomatoes", 3)
update_quantity(grocery_list, "ice-cream", 4)
remove_item(grocery_list, "lemonade")
update_quantity(grocery_list, "ice-cream", 1)
print_list(grocery_list)

# Release 4: Reflect
1. What did you learn about pseudocode from working on this challenge?
..*I learned that it really pays off to take a step back and think about how you will tackle this problem before trying to code it.
2. What are the tradeoffs of using arrays and hashes for this challenge?
..*The tradeoffs are having new built in methods that are availble to you. 
3. What does a method return?
..*A method returns nothing, it will return the value after the `return` statement. It will return nil if you give it a string
4. What kind of things can you pass into methods as arguments?
..*You can give a method any datatype, you can even give a method an entire method!
5. How can you pass information between methods?
..*By nesting methods inside your calls on methods... ex. method_call(another_method(parameter), parameter2, parameter2, parameter3)
6. What concepts were solidified in this challenge, and what concepts are still confusing?
..*I'm still a little confused on nesting my calls. I really liked how Zach introduced the idea of creating a 'grocery list' that could slide in as any of our parameters. I thought that it made things look cleaner and made our code more dry. 

=begin
MY OLD CODE:
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
=end
