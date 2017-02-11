module Shout
  def im_yelling(words)
    puts words.upcase + "!!!"
  end
end
class Angry
  include Shout
end
class Happy
  include Shout
end
mad = Angry.new
mad.im_yelling("I love Ruby(Tuesday's)")
happy = Happy.new
happy.im_yelling("I said I'm fine")

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end
class Bird
  include Flight
end
class Plane
  include Flight
end
# DRIVER CODE
bird = Bird.new
bird.take_off(800)
plane = Plane.new
plane.take_off(30000)

module Shout
  def but_wait! (words)
    puts "BUT WAIT... THERE'S MORE, " + words.upcase + "!!!"
  end
end
class Thanksgiving_at_grandmas
  include Shout
end
class Infomercials
  include Shout
end
# DRIVER CODE
leftovers = Thanksgiving_at_grandmas.new
leftovers.but_wait!("Turkey Legs 🍠🥕🍗")
unnecessary_merchandise = Infomercials.new
unnecessary_merchandise.but_wait!("Call now and we'll triple your order of might-tape™ ---for free")
