 # ROBOT TRANSLATOR
 # If a letter is capitalized & its in the first half of the alphabet, it becomes "Bloop."
 # Otherwise, it a letter is capitalized or it's the letter "e", it becomes "buzz".
 # If it's not a lletter at all it becomes "boing".
 # Otherwise, it becomes "bleep".
def translated_character(character)
	# if not a letter
	
	# find out if letter is capitolized
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length/2
	is_capitolized = (character.upcase == character)
	# beginingof_alphabet ()
	# p "Bloop"
else #pushes character into another medthod we haven't yet defined
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
puts translate("testing")