def encrypt (string) 
index = 0
  while index < string.length 
    string[index] = string[index].next 
    index += 1
  end
  puts string
end
decrypting_varible = encrypt
def decrypt(encrypt)
  index = 0
  while index < encrypt.length
  alphabet_index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
    until encrypt[index] == alphabet[alphabet_index]
    alphabet_index += 1
    end 
         encrypt[index] = alphabet[alphabet_index - 1]
  index += 1 
  end
  p encrypt
end
decrypt(decrypting_varible("abc"))

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