 # ROBOT TRANSLATOR

# BUSINESS LOGIC
def translated_character(character)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length/2
	is_capitolized = (character.upcase == character)
	if !alphabet.index(character.downcase)
		"~BOING"
	elsif is_capitolized && alphabet.index(character.downcase) < halfway	
		"~BLOOP"
	elsif is_capitolized || "e"
		"~BUZZ"
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
# USER INTERACTION (UI)
p "Enter the phase you need us to translate!"
user_input = gets.chomp
puts translate(user_input)
