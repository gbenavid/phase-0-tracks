# Pseudocoding 
# Mission: Help out our friends at DBC create fake names!

p "Please enter your (real) first name and we will protect your identity by generating a new one for you:"
name = gets.chomp

def secret_name (name)
	name = name.downcase.split(' ').reverse
	# If 'aeiou' => 'eioua' respectivley.
	# ---letter---
	name = name.join(' ').chars
	# Create a loop for vowels >>> put it into each
	# For each character compare it to 'a'e'i'o'u'
	name.map! { |letter| (letter == "a" ? letter = "e" : letter.next)}

	# match the string to the letters in 'aeio'
	# and all of the consonants to the next consonant in the alphabet.
end

p secret_name(name)
# Output => "Letu Gostu"