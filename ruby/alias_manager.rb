# Pseudocoding 
# Mission: Help out our friends at DBC create fake names!

# Ask the user for their name
p "Please enter your real name and we will protect your identity by generating a new one for you:"
name = gets.chomp

# Input => "First Last"
def secret_name (name)
	# Swapping the first and last name.
	# .split
	#.reverse
	name.split.reverse
	# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
	# and all of the consonants to the next consonant in the alphabet.
end
p secret_name(name)
# Output => "Letu Gostu"
