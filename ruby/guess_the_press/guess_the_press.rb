module Things_games_do # I KNOW THIS ISN'T THE BEST PLACE TO INTRODUCE A MODULE SINCE THERE'S ONLY ONE CLASS, BUT I JUST WANTED TO TRY IT OUT.
  def speak_results (has_won)   
    if has_won == "winner"
      puts "Congratulations! You’ve won!"
    else 
      puts "Better luck next time..." 
    end
    @game_is_over = true
  end
end
class Hangman
include Things_games_do
attr_reader :letters_guessed
attr_accessor :game_is_over
attr_writer :secret_word, # you can write the word but you can't see it
  def initialize(new_word) 
    @secret_word = new_word
    @game_is_over = false
    @count = 0
    @letters_guessed = []
  end
  def guess_letter (a_guess) # checks to see if letter is in secret word
    @count += 1
    if !too_many_guesses && @secret_word.include?(a_guess)
      puts current_status_of_secret_word(a_guess)
    elsif too_many_guesses
      puts "It looks like your out of guesses! "
    else
      puts "Nope this word doesn't include a #{a_guess}.\nKeep Guessing!"
    end
  end
  def current_status_of_secret_word (letter)# Gives updated secret_word.
    @letters_guessed << letter
    if @secret_word.tr("^#{@letters_guessed}", "_") == @secret_word
      speak_results('winner')
      @game_is_over = true
    else 
      @secret_word.tr("^#{@letters_guessed}", "_")
    end
  end
  def too_many_guesses # Guesses are limited
    if @count > @secret_word.length*2
      @game_is_over = true
    else
      @game_is_over = false
    end
  end
end
# DRIVER CODE
puts "Player 1 please enter a secret word!"
game_instance = Hangman.new(gets.chomp)
until game_instance.game_is_over 
  puts "player 2 guess a letter"
  game_instance.guess_letter(gets.chomp)
end
=begin
OLD CODE: FOXES
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
=END
