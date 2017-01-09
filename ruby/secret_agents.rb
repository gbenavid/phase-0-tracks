
#encrypt

#define a method called encrypt that will advance every letter of a string one letter forward
def encrypt(password)
  #set index inside method - scope
  index = 0
#loop through it while the index is < than the length of the word
  if password[index] == "z"
        password[index] = "a"
        index += 1
    end
  while index < password.length    
    #shift the letter by one and update password
    password[index] = password[index].next

    #update index
    index += 1
  end
  #close loop and print password 
  p password
end

# def decrypt(password)
#   #store alphabet in a string so that we can access it.
#   alphabet = "abcdefghijklmnopqrstuvwxyz"
  
#   #loop through the alphabet and match password and alphabet against each other.
#   #nested loop

#   #set index to zero
#   index = 0 
  
#   #decryption_index = nil
  
#   while index < password.length 
#     counter_alpha = 0
    
#     until password[index] == alphabet[counter_alpha]
#     counter_alpha += 1
#     #store counter alpha into another variable
    
#     end 
#          password[index] = alphabet[counter_alpha - 1]
    
#   index += 1 
#   end
#   p password
# end