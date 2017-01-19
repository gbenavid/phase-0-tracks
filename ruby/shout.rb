module Shout
	def self.yell_angrily(words)
		words + "!!!" + '😡'
	end
	def self.yell_happily(words)
		words + "!!!" + '😆'
	end
end
# DRIVER CODE
puts Shout.yell_happily('I LOVE RUBY')
puts Shout::yell_angrily('I WANT A BROWNIE')