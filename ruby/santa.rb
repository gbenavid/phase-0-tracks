# Here I'm defining a class called 'Santa' along with some methods that we'll see later in the driver code.
class Santa
	# Syntactic Sugar
	attr_reader :ethnicity, :age
	attr_accessor :gender

	def initialize (gender, ethnicity, reindeer_name)
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
		@celebrate_birthday = @age + 1
		@get_mad_at = @reindeer_ranking.insert(-1, reindeer_name)
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
		puts "Reindeer Ranking: #{@get_mad_at}"
		puts "~*~*~*~*~*"		
		end #PRINTING DATA
end
# Driver Code
	# Creating santas by pairing them to the corresponding indices between the two arrays (genders & ethnicities)...
		# santas = []
		# example_genders = [
		# 	"Agender", 
		# 	"Female", 
		# 	"Bigender", 
		# 	"Male", 
		# 	"Androgyne", 
		# 	"Gender Fluid", 
		# 	"N/A"]
		# example_ethnicities = [
		# 	"Black", 
		# 	"Latino", 
		# 	"White", 
		# 	"Japanese-African", 
		# 	"prefer not to say", 
		# 	"Unicorn", 
		# 	"N/A"]

		# example_genders.length.times do |i|
		#   santas << Santa.new(example_genders[i], example_ethnicities[i], "Vixen").about
		#  end
	# Testing my work for getter & setter methods...
		# st_nick = Santa.new("Cis Male", "White", "Vixen")
		# puts "A #{st_nick.gender} Santa has been created, but will soon reasign her gender to 'Female'"
		# st_nick.gender = "Female"
		# st_nick.about # after gender is reasigned
		# puts "Our santa is #{st_nick.age} years of age, and ethinically is recognized to be: #{st_nick.ethnicity}"
	# Creating allot of Santas using loops
	# Assign each santa to a randomly selected gender & ethnicity pair
	# Randomly set each Santa's age to a number between 0-140
	# Print out the instance methods that give you access to the data


