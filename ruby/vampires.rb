# RELEASE 1:
# Here we want to collect intelligence on candidate(s). We will make use of this information latter on when we determine wheather s/he is a vampire or not. 
Otherwise, print “Results inconclusive.”
Print the result at the end of the survey.
puts "what's your name"
sirname = gets.chomp

puts "how old are you?"
age = gets.chomp

puts "what year were you born?"
dob = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
healthcare = gets.chomp

puts "
(#{name}, #{age}, #{dob}, #{garlic}, #{healthcare})
"
# RELEASE 2:
# Match the following conditions in the order they're listed. ---> b
# Your program should base its result on the latest condition matched, not the first condition matched. In other words, it's not a "only one condition will apply" sort of scenario. This may mean repeatedly updating a variable as each condition is checked, so that the variable always contains the most precise result.

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”

# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”






#RELEASE 2: Detection Logic

# ------NOTES TO SELF
# Here are some outcomes (rules if you will) for conditional statements.
# true && true --->> true
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

#def defoA_Vampire = 
  # define a method in Ruby.
  # create a var to hold result
  # if name === 'tu fang' || 'Drake Cula' results = "definitley a vampire"
  # if (age = true && (garlic bread = true || healthcare = true)) result = "probably not a vampire"
  # if (age = false && (garlic == false || healthcare = false)) result = probably a vampire
  # if (age = false && garlic = false && healthcare = false) result = "Almost certainly a vampire"
  # Otherwise result = "Results Inconclusive"
  #return result. 