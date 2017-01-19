# Here I'm defining a class called 'Santa' along with some methods that we'll see later in the driver code.
class Santa
	# Syntactic Sugar
	attr_reader :ethnicity, :age
	attr_accessor :gender

	def initialize (gender, ethnicity, naughty_deer, age)
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
		@age = age
		@gender = gender
		@ethnicity = ethnicity
		@celebrate_birthday = @age + 1
		@get_mad_at = @reindeer_ranking.insert(-1, naughty_deer)
			end
	def speak
			puts "Ho, ho, ho! Haaaappy Holidays!"
			end
	def eat_milk_and_cookies (cookie)
			puts "That was a good #{cookie} cookie!"
			end 
	def about #PRINTING DATA
		puts "Ethnicity: #{@ethnicity}"
		puts "Gender: #{@gender}"
		puts "Age: #{@age}"
		puts "Reindeer Ranking: #{@get_mad_at}"
		puts "~*~*~*~*~*"		
		end
end

# DRIVER CODE
	# Creating santas by pairing them to the corresponding indices between the two arrays (genders & ethnicities)...
		# santas = []
		example_genders = [
			"Agender", 
			"Female", 
			"Bigender", 
			"Male", 
			"Androgyne", 
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
		# example_genders.length.times do |i|
		#   santas << Santa.new(example_genders[i], example_ethnicities[i], "Vixen").about
		#  end
	# Testing my work for getter & setter methods...
		# st_nick = Santa.new("Cis Male", "White", "Vixen")
		# puts "A #{st_nick.gender} Santa has been created, but will soon reasign her gender to 'Female'..."
		# st_nick.gender = "Female"
		# st_nick.about # after gender is reasigned
		# puts "Our santa is #{st_nick.age} years of age, and ethinically is recognized as: #{st_nick.ethnicity}"

	# Creating allot of Santas:
santa_con = []
200.times do 
	santa_con << Santa.new(example_genders.sample, example_ethnicities.sample, "Vixen", rand(141)).about
end