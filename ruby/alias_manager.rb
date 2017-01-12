# Pseudocoding 
# Mission: Help out our friends at DBC create fake names!

# p "Please enter your (real) first name and we will protect your identity by generating a new one for you:"
# name = gets.chomp

# Input => "First"
def secret_name (name)
	name = name.downcase.split("")
	# ===> 'gina'
	
	# If the string 'name' has any characters that match 'aeiou' we will turn those into the next vowel.
	# ----
	
	# split the entire name into a string of downcase characters
	# name.split("")
	# ['g', 'i', 'n', 'a']
	
	# let the computer know what a vowel is
	vowels = ['a', 'e', 'i', 'o', 'u']
	# For each character compare it to 'a'e'i'o'u'
	name.each do |letter|
		# print the next vowel respectivly 
		p "I love you #{letter}"
		# 'I love you b'
		# 'I love you e'
		# 'I love you n'...etc.
	end
	# match the string to the letters in 'aeio'
	# if the condition is true, return the next vowel (.next)
	# and all of the consonants to the next consonant in the alphabet.
end
p secret_name('GINA')
# Output => "Letu Gostu"










