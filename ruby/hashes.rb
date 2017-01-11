# ----- The Program -----
# Note: Use symbols
p "Please type carefully when entering the following information about your client."
# Promt the user for all of this information.
  # client: 
  # name, 
  # age, 
  # number of children, and
  # decor theme
p "Name of client:"
client_name = gets.chomp
p "Age:"
age = gets.chomp
p "How many kids does your client have? (enter 0 if none)"
# Convert any user input to the appropriate data type. 
kids = gets.chomp.to_i
p "The decor is a custom theme (true/false)?"
custom_theme = gets.chomp

# -----client data in an array with key values-----
client_data = {
  :client_name => client_name,
  :age => age,
  :kids => kids,
  :custom_theme => custom_theme}
# Print the hash back out to the screen when the designer has answered all of the questions.
p client_data
p "^ ^ ^ ^ ^ ^ Does all that information look right to you?"
p "If all the information is correct type 'none', otherwise press enter"
response = gets.chomp
if response == 'none'
  p "Okay great! Here are your final results:"
elsif     
  p "Okay, what feild needs a correction (e.g client_name)?"
  correct_sym = gets.chomp.to_sym
  p "What would you like it to say instead?"
  correct_value = gets.chomp
  #update corresonding key
  client_data[correct_sym] = correct_value
end
# Print the latest version of the hash, and exit the program.
p client_data