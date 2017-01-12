# Pseudocoding 
# Mission: Help out our friends at DBC create fake names!

p "Please enter your (real) first name and we will protect your identity by generating a new one for you:"
name = gets.chomp

# Input => "Gina Benavidez"
def secret_name (name)
	name = name.downcase.split(' ').reverse
	# ["benavidez", "gina"]
	# If 'aeiou' => 'eioua' respectivley.
	# ---letter---

	# Create a loop for vowels >>> put it into each
	# For each character compare it to 'a'e'i'o'u'
	name.map { |letter| (
		letter == 'a' ? letter == "e" 
		: letter.next
		)}
	# match the string to the letters in 'aeio'
	# if the condition is true, return the next vowel (.next)
	# and all of the consonants to the next consonant in the alphabet.
end

p secret_name(name)
# Output => "Letu Gostu"