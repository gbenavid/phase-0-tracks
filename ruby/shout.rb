module Shout
	def self.yell_happily(words)
		# words + "!!!" + '😆'
		# end
	def but_wait! (words)
		puts "BUT WAIT... THERE'S MORE, " + words.upcase + "!!!"
	end
end
# Classes (Incl. Shout Module)
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