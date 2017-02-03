=begin
puts "Here is a completed job application from a candidate"
puts "----"*12
puts "INTERIOR DESIGNER JOB APPLICATION"
application = {
  full_name: "Gina Benavidez",
  address: "1000 Pine St. APT 1, Leekwell, OH, 22140",
  email: "gb@gmail.com",
  phone: "123.123.1234",
  "Favorite shade of blue" => "Royal",
  "Wallpaper preferences" => [0, 1],
  "Ombre is:" => 2
}
p application
puts "----"*15
puts "We can combine hashes together:"
puts application[:address] + application[:phone]
puts "We can also store keys in variables and then access the variable:"
client = application[:full_name]
puts client
puts "And we can modify those created variables, and use them to manipulate our hash:"
client = "Brenden Stone"
application[:full_name] = client
puts application[:full_name]
puts "----"*15
p application
=end
puts "Welcome to the Client2Hash Mixer 2000! \nAnswer the following questions about your client and a data structure will be created for them."
client = {
  name: nil,
  age: nil,
  children: nil,
  decor_theme: nil
}
puts "What id your clients name?"
client[:name]= gets.chomp
puts "How old is this client?"
client[:age]= gets.chomp.to_i
puts "How many children does your client have?"
client[:children]= 
  if gets.chomp != '0' 
    true
  else
    false      
  end
puts "What decor theme is your client interested in?"
client[:decor_theme]= gets.chomp
p client
















# puts "Welcome! Let's process your client's information!"
# # Process the interior design application
# application = {
#   name: "Gina Ghram",

#   address: "1400 Play St. Apt 12 Boston",

#   email: "gina-g@gmail.com",

#   phone: "123.234.3456",

#   fav_bule_hues: "periwinkle, Lemongrass, navy",

#   wallpaper_preferences: [
#     paisley: true, 
#     cheverons: false, 
#     photorealistic_1: false, 
#     photorealistic_2: true], 
#   obmbre_is: [
#   fierce: false,
#   last_season: true,
#   medieval: false]
# }
# p application
# # Add a value that let's us know that we have/n't hirred this person.
# application["hirred"] = true
# application[:name] = "Gina Benavidez"
# p application
# p application[:wallpaper_preferences]




























# # ----- The Program -----
# # Note: Use symbols
# puts "Please type carefully when entering the following information about your client."
# # Promt the user for all of this information.
#   # client: 
#   # name, 
#   # age, 
#   # number of children, and
#   # decor theme
# puts "Name of client:"
# client_name = gets.chomp
# puts "Age:"
# age = gets.chomp
# puts "How many kids does your client have? (enter 0 if none)"
# # Convert any user input to the appropriate data type. 
# kids = gets.chomp.to_i
# puts "The decor is a custom theme (true/false)?"
# custom_theme = gets.chomp

# # -----client data in an array with key values-----
# client_data = {
#   :client_name => client_name,
#   :age => age,
#   :kids => kids,
#   :custom_theme => custom_theme}
# # Print the hash back out to the screen when the designer has answered all of the questions.
# puts client_data
# puts "Does all that information look right to you?"
# puts "If all the information is correct type 'none', otherwise press enter"
# response = gets.chomp
# if response == 'none'
#   puts "Okay great! Here are your final results:"
# elsif     
#   puts "Okay, what feild needs a correction (e.g client_name)?"
#   correct_sym = gets.chomp.to_sym
#   puts "What would you like it to say instead?"
#   correct_value = gets.chomp
#   #update corresonding key
#   client_data[correct_sym] = correct_value
# end
# # Print the latest version of the hash, and exit the program.
# puts client_data