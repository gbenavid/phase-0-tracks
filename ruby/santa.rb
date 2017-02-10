class Santa
	attr_reader :ethnicity, :print
	attr_accessor :gender, :age
	def initialize(gender, ethnicity)
		# puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = [
			"Rudolph", 
			"Dasher", 
			"Dancer", 
			"Prancer", 
			"Vixen", 
			"Comet", 
			"Cupid", 
			"Donner", 
			"Blitzen"
		]
		@age = 0
	end
	def celebrate_birthday
		@age += 1
	end
	def get_mad_at(naughty_deer)
	  @reindeer_ranking.delete(naughty_deer)
	  @reindeer_ranking.push(naughty_deer)
	  @reindeer_ranking
	end
	def speak
		puts "HO HO HO! Haaaappy Hollidays!!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end
	def print
		puts "Hi I'm a #{@ethnicity} Santa and I identify as #{@gender},\n     I'm also #{@age} years old. Merry Christmas!"
	end
end
example_genders = [
	"Agender", 
	"Female", 
	"Bigender", 
	"Male", 
	"Female", 
	"Gender fluid", 
	"N/A"
]
example_ethnicities = [
	"Black", 
	"Latino", 
  "White", 
  "Japanese-African", 
  "Prefer not to say", 
  "Mystical Creature (unicorn)", 
  "N/A"
]
santas = []
example_genders.length.times do |gender_index|
  santas << Santa.new(example_genders[gender_index], example_ethnicities[gender_index])
end
#DRIVER CODE:
10000.times do 
  st_nick = Santa.new(example_genders.sample, example_ethnicities.sample)
  st_nick.age = rand(0..140)
  st_nick.print
end
# Calls to demonstrate my code:
ms_clause = Santa.new(example_genders.sample, example_ethnicities.sample)
p ms_clause
ms_clause.print
ms_clause.eat_milk_and_cookies("Vegan butterscotch")
ms_clause.get_mad_at("Rudolph")
ms_clause.speak
ms_clause.celebrate_birthday
p ms_clause

# Targeting a specific Santa in an array:
santas.each do |santa|
  if santa.eql?(santas.last)
    santa.speak
  else
  	santa.eat_milk_and_cookies("chocolate-chip")
  end
end
