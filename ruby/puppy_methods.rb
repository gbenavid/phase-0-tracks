#NEW WORK: FROGS:

class Daycare
  #ATTRIBUTES
  attr_reader :care_center
  attr_accessor :kid
  def initialize(kid)
    @care_center = "\n1234 Pleasant Dr. \nSan Francisco, CA \n90109, USA"
    @kid = kid
  end
  #METHODS
  def hungry(snack)
    puts "I'm hungry! "*3
    puts "Here's a #{snack}"
  end
  def reeses
    puts "*RING-RING-RING!!!*"
    puts "Here's a jacket before you go outside, #{@kid} "
  end
  def miss_mommy
    time_left = 21 - Time.now.hour 
    puts "You have #{time_left} more hours until Mommy comes to pick you up."
  end
end
Jr = Daycare.new("Tristan")
Jr.hungry("apple")
Jr.reeses
Jr.miss_mommy
puts "Your child #{Jr.kid} is currently staying at: #{Jr.care_center}"

play_pen = []
50.times do 
  child = Daycare.new("Kennedy") 
  child.hungry("raisin")
  child.reeses
  child.miss_mommy
  puts "Your child #{child.kid} is currently staying at: #{child.care_center}"
  puts "*~"*37
  play_pen << child
end
play_pen.each do |child|
  child.hungry("bunch of grapes")
  child.reeses
end

#OLD WORK: FOXES
class Puppy

  def fetch(toy)
	 puts "I brought back the #{toy}!"
	 toy
  end

  def speak(number)
  	number.times do
  		puts "Woolf!"
  	end
  end

  def roll_over 
    puts "*rolls over*"
    end

  def dog_years (age)
  	dog_age = age*7
  	puts dog_age	
  end

  def high_five(dog_name)
  	dog_name.capitalize!
  	puts "#{dog_name}, high-five!"
  	puts "*high fives*"
    end

  def initialize
  	puts "Initializing new puppy instance.."
    end
end
#DRIVER CODE for Puppy Class
roxy = Puppy.new
roxy.fetch("plastic_bone")
roxy.speak(4)
roxy.roll_over
roxy.dog_years(5)
roxy.high_five("roxy")



class Fish
  def initialize
    puts "Initializing new fish instance.."
  end
  def  bubbles
    puts "*Blop blop blop*"
  end

  def swivels
    puts "*Swerve*"
  end
end
fish_array = []
50.times do
	fish = Fish.new
	fish_array << fish
end

#DRIVE CODE for Fish Class
fish_array.each { |fish|
	fish.bubbles
	fish.swivels
}
