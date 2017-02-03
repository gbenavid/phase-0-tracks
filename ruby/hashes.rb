puts "Welcome to the Client2Hash Mixer 2000™! \nAnswer the following questions about your client and a data structure will be created for them."
client = {
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
puts "~*"*20
puts "YOUR HASH HAS NOT BEEN FINALIZED."
p client
puts "~*"*20
puts "Would you like to make any corrections to the hash you've created?\nType 'yes' or 'no'."
if gets.chomp == 'yes'
  puts "What field would you like to update?"
  symbol = gets.chomp.to_sym
  puts "Please type in the correct value:"
    client[symbol]=gets.chomp
else
  puts "The Client2Hash Maker 2000™ will proceed with the creation of your hash..."
end
puts "__"*20
p client
puts "__"*20
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
puts "Finally, we can also add key value pairs:"
client[:was_hired]=true
puts "----"*15
p application
=end
