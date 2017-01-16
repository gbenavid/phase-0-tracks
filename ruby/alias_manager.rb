# Pseudocoding 
# Mission: Help out our friends at DBC create fake names!

p "Please enter your (real) first name and we will protect your identity by generating a new one for you:"
person_name = gets.chomp
def reverse(string)
	string = string.downcase.split(' ').reverse
	string = string.chars
end
# make a helper function to compare it to vowles




# TAKE A LETTER INSTEAD OF A CHAR INSIDE AN ARRAY AND THEN PUSH IT BACK THROUGH.

# 			\/ 
def is_vowel? (letter) # [b e n a ' ' g i n a]
	vowel = "aeiou"  # Do I have to do it by character or by one string?
#	person_name.each {|letter| letter == 'vowles' ? (letter << vowles.next) : letter}
	vowel.include?(letter) # returns true/false
	if true && letter == 'a'
		return 'e'
	elsif true && == 'e'
		return 'i'
#etc	.... until
	else 
		return letter 
end

def is_consanant? (letter) # [b e n a ' ' g i n a]
	constanats = "bcdfghjklmnpqrstvwxyz"  #	person_name.each {|letter| letter == 'vowles' ? (letter << vowles.next) : letter}
	is_consanant.include?(letter) # returns true/false

	if true && letter == 'b'
		return 'c'
	elsif true && == 'c'
		return 'd'
#etc	.... until z
	elsif == ' ' #spaces
		return ' '
	else
		return letter #(edge cases like !@# or other non letters)
end


is_vowel(reverse(person_name))
# make another one for not vowles
# make a final one with .map that would use all the help methods together

# You can't use .next
# Is it a vowel?
#'c' 'i' 'n' 'e 'g' ina'.chars

# THEN is it a constant?
def conditional (array)
	vowles = ['aeiou']
	constanats = ['bcdfghjklmnpqrstvwxyz']
	#.index()>> you know where & what your reff.... then 
		# constants_index = constanats.length

	# Loop
	until array.length < constants_index
		for each { |letter| (letter == 'a' ? (letter = letter == 'e') : letter ) }
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

def secret_name (name)
	name = name.downcase.split(' ').reverse
	name = name.join(' ').chars
	name.map { |letter| (letter == (helper method for vowels) ? letter == (helper method for constanats) : edge cases)}

end
p secret_name(name)
# SET UP HELPER METHODS ....
	# DEF 
# MAP IS THE LAST CALL.
METHOD
	IS IT A vowel

#--------STARTING OVER----------
# Input => "Felicia Torres"

# Steps:
# * Swap first and last name
def split_reverse (name_str)
  name_str.downcase.split("").reverse.join 
end # ["torres felicia"]

# * Change all the vowels to the next vowel
def next_vowels (array_of_letters)
  vowels = ["aeiou"]
  # for each str_1 print vowel
  str_1.each {|letter|
      puts "Now the block p arameter has a value of the currnt array item: #{item}" }
  end
end
# * Consonants to next consonant

split_reverse("Felicia Torres") 
# ["torres", "felicai"]
# Output => "Vussit Gimodoe"







