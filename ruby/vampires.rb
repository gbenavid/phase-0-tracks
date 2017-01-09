# RELEASE 1: Interview with the Vampire
# Here we want to collect intelligence from our candidate. We will make use of this information latter on when we determine wheather s/he is a vampire or not. 
puts "what's your name"
input = gets.chomp

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







#RELEASE 2: Detection Logic

# ------NOTES TO SELF

# true && true --->> true
# true || false --->> true
# true && false ---false
# true && (false || false) ---> false
# (true && false) || true ---> true
# false ---> false
# !false ---> true
# !(true && true) ---> false  

#def defoA_Vampire = 
  # define a method in Ruby.
  # create a var to hold result
  # if name === 'tu fang' || 'Drake Cula' results = "definitley a vampire"
  # if (age = true && (garlic bread = true || healthcare = true)) result = "probably not a vampire"
  # if (age = false && (garlic == false || healthcare = false)) result = probably a vampire
  # if (age = false && garlic = false && healthcare = false) result = "Almost certainly a vampire"
  # Otherwise result = "Results Inconclusive"
  #return result. 