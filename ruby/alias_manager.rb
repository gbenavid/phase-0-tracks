# Pseudocoding 
# Mission: Help out our friends at DBC create fake names!

p "Please enter your (real) first name and we will protect your identity by generating a new one for you:"
person_name = gets.chomp
def reverse(string)
	string = string.downcase.split(' ').reverse
	# "bena gina"
	string = string.chars
end
def conditional (array)
	vowles = ['aeiou']
	constanats = ['bcdfghjklmnpqrstvwxyz']
	constants_index = constanats.length
	# Loop
	until array.length < constants_index
		for each { |letter| (letter == 'a' ? (letter = letter == 'e') : x ) }
	end
end

puts conditional(reverse(person_name))

# create a loop that iterates over the characters
# 	# for each?
# 	if (# character = " " (or a !))
# 		# return " "
# 	elsif # character = a vowel
# 		# return the next vowel respectively
# 	else (# if the character is 'aa' )
# 		# change it to a
# 	end
# end

# Output => "Letu Gostu"

# ---------- ATTEMPTED
# def secret_name (name)
# 	name = name.downcase.split(' ').reverse
# 	name = name.join(' ').chars
# 	name.map! { |letter| (letter == "a" ? letter = "e" : letter.next)}
# end
# p secret_name(name)