class A_word_guessing_game
	attr_reader :is_over, :count
	attr_accessor :guessing, :secret_word
	
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
		else
			false
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
	puts "Guess a letter:" # I think program will die here b/c method dies
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








