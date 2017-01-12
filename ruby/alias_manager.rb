# Pseudocoding 
# Mission: Help out our friends at DBC create fake names!

p "Please enter your (real) first name and we will protect your identity by generating a new one for you:"
person_name = gets.chomp
def reverse(string)
	string = string.downcase.split(' ').reverse
	string = string.join(' ')
end
def next_letter(string)
	string.chars.map!{|letter| letter.next}.join('')
end
def condition(string)
	# create a loop that iterates over the characters
	# for each?
	if (# character = " " (or a !))
		# return " "
	elsif # character = a vowel
		# return the next vowel respectively
	else (# if the character is 'aa' )
		# change it to a
	end
end
puts next_letter(reverse(person_name))

# Output => "Letu Gostu"

# ---------- ATTEMPTED
# def secret_name (name)
# 	name = name.downcase.split(' ').reverse
# 	name = name.join(' ').chars
# 	name.map! { |letter| (letter == "a" ? letter = "e" : letter.next)}
# end
# p secret_name(name)