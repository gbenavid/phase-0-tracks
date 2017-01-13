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
	'Pizza']

	ingridient_list = ingridients.length
	recipe_length = recipe.length

	ingridient_list.times { |i| puts ingridients[i] }
	puts ("~*~*")*7
	recipe_length.times { |i| puts recipe[i] }

ingridients.each do |order, dry| 
	puts "Mix #{order}, #{dry}"
end

recipe
















