# A simple encrypting method that returns a string where every character is pushed to the next letter.
def encrypt (string) 
index = 0
  while index < string.length 
    string[index] = string[index].next 
    index += 1
  end
  puts string
end

decrypting_varible = encrypt(string)
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