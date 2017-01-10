 # ROBOT TRANSLATOR

 # If a letter is capitalized & its in the first half of the alphabet, it becomes "Bloop."
 # Otherwise, it a letter is capitalized or it's the letter "e", it becomes "buzz".

def translated_character(character)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length/2
	is_capitolized = (character.upcase == character)
	# Now let's start in on some conditional logic!
	if !alphabet.index(character.downcase)
	# if the character is not in the alphabet
		"~BOING"
	elsif is_capitolized && (alphabet.index(character.downcase) +1) <= halfway	
		"~Bloop."
	else
		"~BLEEP"
	end
end

def translate(string)
	character_index = 0
	translated_phrase = "" 
	while character_index < string.length 
		translated_phrase << translated_character(string[character_index])
		character_index += 1
	end
	translated_phrase
end
puts translate("!AaZ") #>> ~BOING.~BLOOP~BLEEP~BLEEP