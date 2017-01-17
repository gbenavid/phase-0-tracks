# Here I'm defining a class called 'Santa' along with some methods that we'll see later in the driver code.
class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
		end
	def eat_milk_and_cookies (cookie)
		puts "That was a good #{cookie} cookie!"
		end
	def initialize
		puts "Initializing Santa instance ..."
		end
end
# Driver Code

# Here we're creating an instance within our Santa class. 
st_nick = Santa.new
# He can speak and eat milk and cookies through the methods we created for him:
st_nick.speak
st_nick.eat_milk_and_cookies("Vegan Chocolate Chip")