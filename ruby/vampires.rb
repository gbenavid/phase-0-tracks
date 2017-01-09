puts "How many employees are we processing today?"
people_processed = gets.chomp.to_i 

people_processed.times do 
  puts "What's your name?"
  interviewees_name = gets.chomp
    
  puts "How old are you?"
  employee_age = gets.chomp.to_i 
  
  #puts "(Birth year: ~#{Time.new.year - employee_age.to_i})"
  
  likes_garlic = false
    until likes_garlic
    puts "Our company cafeteria serves garlic bread. Do you like garlic (true or false)?"
    garlic_answer = gets.chomp 
      else
       puts "I'm sorry you must respond with 'true' or 'false'"
      end 
    end 
  
  insurance_answer = false
    until insurance_answer
      puts "Would you like to enroll in the company's health insurance? y/n"
      insurance_yn = gets.chomp 
        if insurance_yn == "y"
          insurance_answer = true
        elsif insurance_yn == "n"
          insurance_answer = true
        else 
          puts "y or n response only."
        end 
    end 
  
  puts "Summary: #{interviewees_name}, #{employee_age} years old. Wants health insurance: #{insurance_yn}, wants garlic bread: #{garlic_yn}."
  

    if (employee_age.to_i >=18 && employee_age.to_i <=85) && (garlic_yn == "y" || insurance_yn == "y") && !(interviewees_name == "Drake Cula" || interviewees_name == "Tu Fang")
      puts "PROBABLY NOT A VAMPIRE"
    elsif !(employee_age.to_i >=18 && employee_age.to_i <=85) && (garlic_yn == "y" || insurance_yn == "y") && !(interviewees_name == "Drake Cula" || interviewees_name == "Tu Fang")
      puts "PROBABLY A VAMPIRE"
    elsif !(employee_age.to_i >=18 && employee_age.to_i <=85) && (garlic_yn == "n" && insurance_yn == "n") && !(interviewees_name == "Drake Cula" || interviewees_name == "Tu Fang")
      puts "ALMOST CERTAINLY A VAMPIRE"
    elsif (interviewees_name == "Drake Cula" || interviewees_name == "Tu Fang")
      puts "DEFINITELY A VAMPIRE"
    else 
      puts "RESULTS INCONCLUSIVE"
    end 
  
  allergy_yn = false 
  until allergy_yn 
  puts "Please list all alergies. Type 'done' when finsihed."
  allergy = gets.chomp 
      if allergy == "sunshine"
      puts "PROBABLY A VAMPIRE"
      allergy_yn = true 
      elsif allergy == "done"
      allergy_yn = true 
      end 
  end 
  
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

#RELEASE 1: Interview with the Vampire

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
# p "How many employees will we be processing today?"
# interviewees = gets.to_i
# p "What's your name?"
# title = gets.chomp

# puts "What's your age?"
# age = gets.to_i

# puts "What year were you born?"
# dob = Time.new.year - gets.to_i
# validAge = age == dob 

# puts "I enjoy eating garlic bread. (true or false)"
# likes_garlic = gets.chomp

# puts "I am interested in signing up for health at Werewolf Inc. (true/ false)"
# healthcare = gets.chomp

# tuFang = "Tu Fang"
# drakeCula = "Drake Cula"

# inteligence = ["#{title}", "#{age}", "#{likes_garlic}", "#{healthcare}"]
# # p "#{title} is #{age} years old and has a #{likes_garlic} love for garlic. This person's interest in our healthcare system seems to be #{healthcare} and therefore, I suspect that..."

# def vampire_detector ("title", validAge, likes_garlic, healthcare)
# 	if (title = ("Tu Fang" || "Drake Cula"))
# 		p "Definitely a vampire"
# 	elsif (validAge && (likes_garlic || healthcare))
# 		p "Probably not a vampire."
# 	elsif !(validAge && likes_garlic && healthcare)
# 		p "Almost certainly a vampire."
# 	elsif !(validAge && (likes_garlic || healthcare))
# 		p "Probably a vampire"
# 	else p "Results inconclusive"
# 	end
# end
# vampire_detector (title, validAge, likes_garlic, healthcare)
#("#{title}", "#{validAge}", "#{likes_garlic}", "#{healthcare}")
# i = 1
# while i < interviewees do 
# 	logic
# 	i += 1
# end

# RELEASE 3 : Process Multiple Employees

# go in order as prompted

# Begin the surey process of the first employee.
# Print the result
# Then begin the processing for the next employee
# A while loop stops when a conditional is false
# An until loop stops when it's conditional is true
# employees_interviewed = 0
# p logic 