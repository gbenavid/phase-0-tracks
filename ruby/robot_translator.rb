 # ROBOT TRANSLATOR
 # If a letter is capitalized & its in the first half of the alphabet, it becomes "Bloop."
 # Otherwise, it a letter is capitalized or it's the letter "e", it becomes "buzz".
 # If it's not a lletter at all it becomes "boing".
 # Otherwise, it becomes "bleep".
def translator(phrase)
	character_index = 0 # setting our counter
	while character_index < phrase.length # Telling the loop to end when the character index is less than the phrase length (when the string finishes)
		puts phrase[character_index] # Prints our chracter index 
		character_index += 1 # Index increments by 1 after our condition is preformed so we're not stuck in an infinite loop
	end
end
# Before we move on let's test our foundation. So far we've created a loop, let's see if that loop can print the letters in our test phrase.
translator("testing")