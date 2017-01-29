class A_word_guessing_game
	attr_reader :count
	attr_accessor :guessing, :secret_word, :is_over
	
	def initialize (secret_word)
		@secret_word = secret_word
		@is_over = false
		@count = 0
		@guessing = "?"*(secret_word.length)
		@letters_guessed = ""
	end

	def check(letter)
		@count += 1
		if @secret_word.include?(letter)
			return true
		else
			return false
		end
	end

	def display_letter(letter)
		@letters_guessed = @letters_guessed.concat(letter)
		@guessing = @secret_word.tr("^#{@letters_guessed}", "?")
	end

	def guessed_word
		if @guessing == @secret_word
			@is_over = true
		end
	end

	def out_of_guesses
		if @count <= @secret_word.length*2
		  true
		else
		  false
		  puts "Sorry, your out of guesses, better luck next time!"
		end
	end
end

# UI
puts "Welcome to Guess the Press"
puts "-~-~"*6
puts "Player 1, enter a word for your opponent to guess: "
require 'io/console' 
game = A_word_guessing_game.new(STDIN.noecho(&:gets).chomp)
puts "-~-~"*6
puts "Player 2: Once you think you've guessed the letter entirely, '\n' type the full word and then press enter!"

# DRIVER CODE
until game.is_over || !game.out_of_guesses
	if game.guessed_word
		puts "Congratulations! You Won!!!"
		return game.is_over = true
	end
	
	puts "Guess a letter:" 
	guess = gets.chomp
# LOGIC	 
	if game.guessed_word
		puts "Congratulations! You Won!!!"
	elsif !game.check(guess) 
		puts "No, there isn’t a #{guess}." 
	elsif game.check(guess) && guess != ""
		puts "Nice! #{game.display_letter(guess)}"
	else 
		puts "Sorry, I didn't get that."
	end
end
# CLASS
# att_accessor: :hidden_word
# att_reader: :is_over, :guessed_word 
	# Initialized method
	  # word from Player 1
	  # guess from Player 2
	  # game is over
	  # guessed word
	  # count
	# totals guess attempts
		# Guesses are limited, and the number of guesses available is related to the length of the word.
		# Repeated guesses do not count against the user.
		# checks count and compares it to the length of the string * 2
	# made_guess method (letter guessed)
		# adds a tick to notify the program that they have used one of their guesses
		# checks to see if the letter guessed is inside the secret word
#UI
	# Greets players
	# initialize a new class instance
	# Player 1 can enter a hidden word
	# pass hidden word through a method in our class instance
	# DRIVER CODE
		# LOOP
		# Until the game is over || the user has guessed the word
		# LOGIC/ CONTROL FLOW
			# check to see if word == accumulated guesses run guess through a method in the series that checks to see if the word is eq. to guesses.
				
			# check to see if the player still has guesses. 
			# Ask Player 2 to take a guess
			# if the guess returns true from the made_guess method
				# puts "(e.g: _ c _ _ _ a )" or some form of continual feedback
			# and a taunting message if they lose.
# if the user has guessed word congratulate them
# if the game is over taught them about losing.

# Thank the users for playing and ask them to play again










