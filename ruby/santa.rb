# Here I'm defining a class called 'Santa' along with some methods that we'll see later in the driver code.
class Santa
	def initialize (gender, ethnicity)
		puts "Initializing Santa instance ..."
		@reindeer_ranking = [
			"Rudolph", 
			"Dasher", 
			"Dancer", 
			"Prancer", 
			"Vixen", 
			"Comet", 
			"Cupid", 
			"Donner", 
			"Blitzen"]
		@age = 0
		@gender = gender
		@ethnicity = ethnicity
		end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
		end
	def eat_milk_and_cookies (cookie)–
		puts "That was a good #{cookie} cookie!"
		end
	def about
		puts "Ethnicity: #{@ethnicity}"
		puts "Gender: #{@gender}"
		puts "~*~*~*~*~*"		
		end
end
# Driver Code
		# Here we're creating an instance within our Santa class. 
		# st_nick = Santa.new
		# st_nick.speak
		# st_nick.eat_milk_and_cookies("Vegan Chocolate Chip")
santas = []
example_genders = [
	"Agender", 
	"Female", 
	"Bigender", 
	"Male", 
	"Lesbian", 
	"Gender Fluid", 
	"N/A"]
example_ethnicities = [
	"Black", 
	"Latino", 
	"White", 
	"Japanese-African", 
	"prefer not to say", 
	"Unicorn", 
	"N/A"]
# santas << Santa.new("female", "Latino").about
# santas << Santa.new("bigender", "white").about
# santas << Santa.new("male", "Japanese").about
# santas << Santa.new("Lesbian", "Latina").about
# santas << Santa.new("gender fluid", "Unicorn").about
# santas << Santa.new("N/A", "N/A").about
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i]).about
end

