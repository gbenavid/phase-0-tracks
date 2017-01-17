class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end
	
	def speak(integer)
		integer.times 
		do
			puts 'Woof!'
		end
		#returns 'Woof!' that many times
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years (age)
		puts dog_age = age*7
	end
	def high_five (dog_name)
		dog_name.capitalize!
		puts "#{dog_name} Give Hi-five!"
		puts "*high fives*"
	end
	def initialize
		puts "Initializing new puppy instance ..."
	end
end
# Driver code
roxy = Puppy.new
roxy.fetch("ball")
#roxy.speak(4)
#roxy.roll_over
#roxy.dog_years(5)
#roxy.high_five("roxy")
