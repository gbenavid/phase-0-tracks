 # ROBOT TRANSLATOR
 # If a letter is capitalized & its in the first half of the alphabet, it becomes "Bloop."
 # Otherwise, it a letter is capitalized or it's the letter "e", it becomes "buzz".
 # If it's not a lletter at all it becomes "boing".
 # Otherwise, it becomes "bleep".
def translated_character(character)
	character = "T" #Test condition to check workflow
end

def translate(string)
	character_index = 0
	translated_phrase = "" # Here we're creatingan empty string that will hold the data we push into it. In this case we want to translate each character into a corresponding string.
	while character_index < string.length 
		translated_phrase << translated_character(string[character_index]) # Updates translated phase with one translated character at a time
		character_index += 1
	end
	translated_phrase #Returns our translated phrase
end
puts translate("testing")