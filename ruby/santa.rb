# Here I'm defining a class called 'Santa' along with some methods that we'll see later in the driver code.
class Santa
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
		end
	def gender
		@gender
		end
	def gender=(new_gender)
		@gender = new_gender
	end
end
# Driver Code
santas = []
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

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], "Vixen").about
 end

st_nick = Santa.new("Cis Male", "White", "Vixen")
puts "A #{st_nick.gender} Santa has been created"
st_nick.about
st_nick.gender = "Gender Queer"
st_nick.about



