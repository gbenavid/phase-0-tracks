# This sheet is for my own personal testing. My programs are independently mine and will not be merged to the master without showing NatNatMeow

def encrypt (string) 
index = 0
	while index < string.length 
		string[index] = string[index].next # updating the string index to reflect the preceeding letter in the alphabet 

		index += 1
	end
	puts string #printing that new letter you just added
end
# encrypt("abc")
	#abc ---> bcd

	#bcd ---> abc


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
decrypt(encrypt("bcd"))

# ---NOTES TO SELF---

# index = 0
# secret_password = "unicorn"

# # strings are zero-indexed,
# # so .length on a string will always
# # return 1 more than the largest index.
# # If length is 7, the index of the 
# # last letter is 6.

# puts "Length of password is #{secret_password.length} letters."

# puts "The letter at index 6 is #{secret_password[6]}."

# # let's use .length to loop 
# # through the word
# # and simply print each letter ...
# while index < secret_password.length
#   p secret_password[index]
#   index += 1
# end

# # or loop through and do something
# # interesting with each letter
# index = 0
# while index < secret_password.length
#   secret_password[index] = secret_password[index].upcase!
#   index += 1
# end
# puts secret_password


# initialize the counter OUTSIDE the loop
# counter = 0

# while counter < 10
#   # print the counter
#   puts counter
  
#   # avoid an infinite loop
#   counter += 1
# end
# greeting = "hello"

# # use the index to print
# # each letter
# p greeting[0]
# p greeting[1]
# p greeting[2]
# p greeting[3]
# p greeting[4]

# # or reverse it
# p greeting[-1]
# p greeting[-2]
# p greeting[-3]
# p greeting[-4]
# p greeting[-5]