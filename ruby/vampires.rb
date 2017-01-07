#RELEASE 1: Interview with the Vampire
# puts "what's your name"
# name = gets.chomp


# puts "how old are you?"
# age = get.chomp.to_i

# puts "what year were you born?"
# dob = gets.chomp.to_i
# # validAge = 2017 - dob == age

# puts "Our company cafeteria serves garlic bread. Should we order some for you?"
# garlic = gets.chomp

# puts "Would you like to enroll in the company’s health insurance?"
# healthcare = gets.chomp

# puts "
# (#{name}, #{age}, #{dob}, #{garlic}, #{healthcare})
# "

#RELEASE 2: Detection Logic

# wolves_like_sunshine = true
# wolves_like_garlic = true
# vampires_like_sunshine = false
# vampires_like_garlic = false

#Example elsif statment:
# if (vampires_like_garlic)
# 	puts "Not a vampire"
# elsif (wolves_like_sunshine)
# 	puts "Someone enjoys garlic"
# end

# IRB Practice
# In terminal run:
# wolves_like_garlic && wolves_like_sunshine --->> true
# wolves_like_garlic || vampires_like_garlic --->> true
# wolves_like_garlic && vampires_like_garlic ---false
# wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic) ---> false
# (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine ---> true
# vampires_like_garlic ---> false
# !vampires_like_garlic ---> true
# !(wolves_like_sunshine && wolves_like_garlic) ---> false

# Match the following conditions in the order they're listed.
# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

puts "What's your age?"
age = gets.to_i
puts "What year were you born?"
dob = Time.new.year - gets.to_i
validAge = age == dob 
puts "I enjoy eating garlic bread. (true or false)"
likes_garlic = gets.chomp
puts "I am interested in signing up for health at Werewolf Inc."
healthcare = gets.chomp

if (validAge && (likes_garlic || healthcare))
	puts "Probably not a vampire."
elsif (likes_garlic || ())
	puts "Probably a vampire"
else puts "Results inconclusive"
end

# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”
 # give a question 
 # update a varible
 # give another question
 # print the result at the end of the survey



#def defoA_Vampire = 
	# define a method in Ruby.
	# create a var to hold result
	# if name === 'tu fang' || 'Drake Cula' results = "definitley a vampire"
	# if (age = true && (garlic bread = true || healthcare = true)) result = "probably not a vampire"
	# if (age = false && (garlic == false || healthcare = false)) result = probably a vampire
	# if (age = false && garlic = false && healthcare = false) result = "Almost certainly a vampire"
	# Otherwise result = "Results Inconclusive"
	#return result. 


# go in order as prompted
#check out time class




















