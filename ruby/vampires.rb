class Fact_checking
  def valid_name(name)
    # Name is not drakeula or tufang
    # Returns true else false
  end
  def valid_age (age, dob)
    # If their dob is not eq to year return false. If their age corresponds with their dob && they're <= 120 return true
  end
  def likes_garlic? (preference)
    # returns true or false based off of a value entered
    # value.downcase == 'yes' ? true : false
  end
  def healthcare(enrollment)
    # returns true or false based off of a value entered
    # value.downcase == 'yes' ? true : false 
  end
end
# UI: Ask the user for the following information
response = Fact_checking.new
puts "What's your name?"
sirname = response.valid_name(gets.chomp)

puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
response.valid_age(age, gets.chomp.to_i) 

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
response.likes_garlic?(gets.chomp)

puts "Would you like to enroll in the company’s health insurance?"
response.healtcare(gets.chomp)