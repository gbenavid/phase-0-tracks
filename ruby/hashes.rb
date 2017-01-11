# Note: Use symbols
p "Please type carefully when entering the following information about your client."
# Promt the user for all of this information.
	# client: 
	# name, 
	# age, 
	# number of children, and
	# decor theme
p "Name:"
client_name = gets.chomp
p "Age:"
age = gets.chomp
p "How many kids does your client have?"
# Convert any user input to the appropriate data type. 
kids = gets.chomp
p "The decor is a custom theme (true/false)?"
custom_theme = gets.chomp

client_data = {
	:client_name => client_name,
	:age => age,
	:kids => has_kids,
	:custom_theme => custom_theme}
# Print the hash back out to the screen when the designer has answered all of the questions.
p client_data
p "Does all that information look right to you?"
p "If all the information is true, type 'true', otherwise type 'false'"
response = gets.chomp
if !response
	p "Okay, what would you like to correct?"
	
end

# ----- The Program -----

def clients_preferences


# Give the user the opportunity to update a key, because sometimes users make mistakes! 
# If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
end
p clients_preferences
# Print the latest version of the hash, and exit the program.
