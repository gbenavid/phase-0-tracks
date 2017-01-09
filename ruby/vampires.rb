# RELEASE 1:
# Here we want to collect intelligence on candidate(s). We will make use of this information latter on when we determine wheather s/he is a vampire or not. 
p "Whats your name?"
sirname = gets.chomp
if sirname == "Drake Cula"
  sirname = false
elsif sirname == "Tu Fang"
  sirname = false
else sirname = true
end

puts "What's your age?"
age = gets.to_i
puts "What year were you born?"
dob = Time.new.year - gets.to_i
age_isvalid = age == dob 

#Asking garlic question:
valid_input = false
until valid_input
  puts "I am the type of person who enjoys garlic (true/ false)."
  likes_garlic = gets.chomp
  if likes_garlic == "true"
    valid_input = true
  elsif likes_garlic == "false"
    valid_input = true
  else
    p "Sorry, that is not a valid answer, please type 'true' or 'false'"
  end
end

valid_input = false
until valid_input
  puts "I will most likely enroll in the healthcare plan at Werewolf Inc. (true/ false)."
  wants_healthcare = gets.chomp
  if wants_healthcare == "true"
    valid_input = true
  elsif wants_healthcare == "false"
    valid_input = true
  else
    p "Sorry, that is not a valid answer, please type 'true' or 'false'"
  end
end
puts "Would you like to enroll in the company’s health insurance?"
healthcare = gets.chomp

puts "
(#{name}, #{age}, #{dob}, #{garlic}, #{healthcare})
"
# RELEASE 2: Conditional Logic



if age_isvalid && likes_garlic && wants_healthcare && sirname# all are true
  p "Probably not a Vampire. Phew!"#If these evaluate to true 
elsif !age_isvalid && (likes_garlic || wants_healthcare)
  p "Probably a Vampire."
elsif (!age_isvalid && !likes_garlic && !wants_healthcare)
  p "Almost certainly a vampire."
elsif !sirname
  p "Definitely a vampire"
else 
  p "Results inconclusive."
end

# the prompt will continuely update the variable to a true or false value based on the conditional if statement it is passed through. When the prompts are finished you will have one remaning outcome of wheather this guy is a vampire or not. 

# -----
# Print the result at the end of the survey.
# -----

# ------NOTES TO SELF
# Here are some outcomes (rules if you will) for conditional statements.
# true && true --->> true
# false && false ---> false
# true || false --->> true
# true && false ---false
# true && (false || false) ---> false
# (true && false) || true ---> true
# false ---> false
# !false ---> true
# !(true && true) ---> false  

# Here is an example of how to exceute code conditionally:
# variable_containing_boolean = true
# if (variable_containing_boolean)
#   puts "A string that returns if that boolean is true."
# else (variable_containing_boolean)
#   puts "A string that returns if that boolean is false"
# end

# REMEMBER that any of the outcomes for the conditional statements could be used in our example for our conditional logic. To explain that better here is a simple example to give you a better idea on what that might look like:
# soup = true
# chips = false

# if (soup && chips) #if both products are true(ly vegan products)
#   p "All of our products are vegan friendly!"
# else 
#   p "Made in a facility where nuts, and animal byproducts are processed."
# end
# returns >>> "Made in a facility where nuts, and animal byproducts are processed."