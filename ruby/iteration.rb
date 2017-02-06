puts "ORIGINAL DATA:"
fridge = [ 
	"grapes", 
	"nut butter", 
	"non-dairy milk", 
	"tea", 
	"water"
]
kitchen = {
  appliances: ["Oven", "Sink", "Range"],
  built_in: 1910,
  health_clearance: true,
  colors: "White and grey",
  food: nil	
}
p fridge
p kitchen

puts "~*~*"*6
puts "Demonstrating iteration with .each:".upcase
kitchen.each do |data, value| 
  puts "The kitchen #{data} #{value}" 
end
fridge.each do |food|
  puts "I finished the #{food}, now we need to buy more #{food}." 
end

puts "~*~*"*6
puts "Demonstrating .map!".upcase
p fridge
fridge.map! do |food|
  "#{food} has been added to our shopping cart!"
end
p fridge

puts "~*~*"*6
puts "OTHER WAYS YOU CAN ITTERATE OVER AN ARRAY OR HASH"

count = {
	1 => "One!", 
	2 => "Two!", 
	3 => "Three!", 
	4 => "Four!", 
	5 => "Five!"
}

digits = [1, 2, 3, 4, 5, 0, 1, 2, 3]
# LOOKING @ VALUES>>>>KEEPS THE REST
p digits
puts "Drop all numbers while their less than 3"
p digits.drop_while {|number| number < 3}

puts "~*~*"*6
numeric = [1, 2, 3, 4, 5, 0]
# LOOKING @ VALUES (likes Goolge!)
p numeric
puts "Take all the numbers while the numbers are less than four"
p numeric.take_while {|number| number < 3}
