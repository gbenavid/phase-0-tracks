=begin
pseudocode the encrypt and decrypt method
=end

#encrypt

#define a method called encrypt that will advance evert letter of a string one letter forward
def encrypt(password)
  #set index inside method - scope
  index = 0
   
#find out how many times we have to loop through the word
#loop through it while the index is < than the length of the word
  while index < password.length
   
  #shift the letter by one and update password
  password[index] = password[index].next
   
  #update index
  index += 1
  end
  #close loop and print password 
  p password
end


#decrypt

#define decrypt method that will go backward one letter of the alphabet
def decrypt(password)
   
  #set index to zero
  index = 0
   
  #store alphabet in a string so that we can access it.
  alphabet = "abcdefghijklmnopqrstuvwxyz"
   
#loop through it while index < the length of the word
  while index < password.length

#shift the letter by one and update password
  #check what letter it is
   

  password[index] = 

#update index

#consider edge case. conditional? 

#close loop and print password