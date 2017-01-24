class Fact_checking
  def valid_name(name)
    if name ==  "tu fang"
      false
    elsif name == "drakula"        
      false
    else 
      true
    end
  end
  def valid_age(age, dob)
    valid_dob = Time.new.year - age
    if age <= 120 && valid_dob == dob
      true
    elsif dob != age     
      false
    else age >120 
      false
    end
  end
  def likes_garlic?(preference)
    preference.downcase == 'yes' ? true : false
  end
  def healthcare(enrollment)
    enrollment.downcase == 'yes' ? true : false 
  end
end
# UI
puts "How many employees will be processed today?"
processing = gets.chomp.to_i

until processing == 0
  response = Fact_checking.new

  puts "What's your name?"
  sirname = gets.chomp.downcase
  is_name = response.valid_name(sirname)

  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  valid_age = response.valid_age(age, gets.chomp.to_i) 

  puts "Our company cafeteria serves garlic bread. Should we order some for you? ('yes' or 'no')"
  likes_garlic = response.likes_garlic?(gets.chomp)

  puts "Would you like to enroll in the company’s health insurance? ('yes' or 'no')"
  healthcare = response.healthcare(gets.chomp)

  puts "Finally as a safety precaution, we need to know all of your known allergies. Please list all allergies and type 'done' when your finished."
  allergies = false
  until allergies
    allergic_to = gets.chomp.downcase
    if allergic_to == 'sunshine'
      valid_age = false
      likes_garlic = true
      allergies = true
    elsif allergic_to == 'done'
      allergies = true
    end
  end
  # LOGIC
  if valid_age && (likes_garlic || healthcare)
    puts "Probably not a vampire." 
  elsif !valid_age && (!likes_garlic || !healthcare) 
    puts "Probably a vampire."
  elsif !valid_age && !likes_garlic && !healthcare
    puts "Almost certainly a vampire."
  elsif !is_name 
    puts "VAMPIRE!!!"
  else
    puts "Results inconclusive."
  end 
  # Printing 
  puts "~-"*15
  puts "| Application for: #{sirname}"
  puts "| Age: #{age}; Age validation: #{valid_age}"
  puts "| Health care enrollment: #{healthcare}"
  puts "| Likes garlic: #{likes_garlic}"
  if allergic_to == 'sunshine'
  puts "| * Please note that these results have been modified \n| due to suspicious allergies reported by the applicant."
  end
  puts "~-"*15
  processing -= 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

  










