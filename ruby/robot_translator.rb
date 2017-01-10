 # ROBOT TRANSLATOR
 # If a letter is capitalized & its in the first half of the alphabet, it becomes "Bloop."
 # Otherwise, it a letter is capitalized or it's the letter "e", it becomes "buzz".
 # If it's not a lletter at all it becomes "boing".
 # Otherwise, it becomes "bleep".
def translator(phrase)
	# Because we're going to be referencing an character index for the string we'll need to set a loop.
	character_index = 0 # Setting the counter for the loop
	while character_index < phrase.length
		p phrase[character_index] # Prints our chracter index
		character_index =+ 1 # Updates are index after our puts is preformed so we're not stuck in an infinite loop
	end
end