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
puts "What's your name?"
puts "How old are you?"
puts "What year were you born?"
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
puts "Would you like to enroll in the company’s health insurance?"