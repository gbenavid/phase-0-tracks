 # ROBOT TRANSLATOR
 # If a letter is capitalized & its in the first half of the alphabet, it becomes "Bloop."
 # Otherwise, it a letter is capitalized or it's the letter "e", it becomes "buzz".
 # Otherwise, it becomes "bleep".
def translated_character(character)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length/2
	is_capitolized = (character.upcase == character)
	# Now let's start in on some conditional logic!
	if !alphabet.index(character.downcase)
	# if the lowercase version doesn't apear
		"~BOING"
	else
		"~BLEEP"
	end
end

def translate(string)
	character_index = 0
	translated_phrase = "" 
	while character_index < string.length 
		translated_phrase << translated_character(string[character_index]) # Updates translated phase with one translated character at a time
		character_index += 1
	end
	translated_phrase
end
puts translate("UL 1!")