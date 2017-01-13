ingridients = {
	1 => 'Flour',
	2 => 'Cayenne',
	3 => 'Salt',
	4 => 'Black Pepper',
	5 => 'Thyme'
}
recipe = [
	'Bread', 
	'Dumplings', 
	'Hash-Browns', 
	'Curry paste', 
	'Pizza'
]
# Est. lengths for array and hash 
	ingridient_list = ingridients.length
	recipe_length = recipe.length

	ingridient_list.times { |i| puts ingridients[i] }
	puts ("~*~*")*7
	recipe_length.times { |i| puts recipe[i] }
	ingridients.each do |order, dry| 
		puts "Mix #{order}, #{dry}"
	end
	puts ("~*~*")*7
	recipe.map do |dish| recipe[3] = "Steamed Califlower"
	end
	p recipe
######################

count = {
	1 => "One!", 
	2 => "Two!", 
	3 => "Three!", 
	4 => "Four!", 
	5 => "Five!"
}

array = [
	"a", 
	"b", 
	"c"
]
digits = [1, 2, 3, 4, 5, 0, 1, 2, 3]
				# LOOKING @ VALUES>>>>KEEPS THE REST
p digits
p digits.drop_while {|number| number < 3}
puts ("~*~*")*7

numeric = [1, 2, 3, 4, 5, 0]
				# LOOKING @ VALUES (likes Goolge!)
p numeric
p numeric.take_while {|number| number < 4}
















