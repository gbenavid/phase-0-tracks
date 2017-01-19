module Shout
	# def self.yell_angrily(words)
		# words + "!!!" + '😡'
		# end
	# def self.yell_happily(words)
		# words + "!!!" + '😆'
		# end
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
leftovers.but_wait!("Turkey Legs")
unnecessary_merchandise = Infomercials.new
unnecessary_merchandise.but_wait!("Call now and we'll triple your order of might-tape™ ---for free")
# puts Shout.yell_happily('I LOVE RUBY')
# puts Shout::yell_angrily('I WANT A BROWNIE')