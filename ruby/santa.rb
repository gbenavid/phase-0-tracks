class Santa
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
santa_con = []
200.times do 
	santa_con << Santa.new(example_genders.sample, example_ethnicities.sample, "Vixen", rand(141)).about
end