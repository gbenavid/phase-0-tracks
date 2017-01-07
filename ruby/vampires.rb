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

# RELEASE 2: Detection Logic	

p "How many employees will we be processing today?"
interviewees = gets.to_i
p "What's your name?"
name = gets.chomp
puts "What's your age?"
age = gets.to_i
puts "What year were you born?"
dob = Time.new.year - gets.to_i
validAge = age == dob 
puts "I enjoy eating garlic bread. (true or false)"
likes_garlic = gets.chomp
puts "I am interested in signing up for health at Werewolf Inc. (true/ false)"
healthcare = gets.chomp
def logic 
	if name == ("Tu Fang" || "Drake Cula")
		p "Definitely a vampire"
	elsif (validAge && (likes_garlic || healthcare))
		p "Probably not a vampire."
	elsif !(validAge && likes_garlic && healthcare)
		p "Almost certainly a vampire."
	elsif !(validAge && (likes_garlic || healthcare))
		p "Probably a vampire"
	else p "Results inconclusive"
	end
end
i = 1
while i < interviewees do 
	logic
	i += 1
end

# RELEASE 3 : Process Multiple Employees

# go in order as prompted



















