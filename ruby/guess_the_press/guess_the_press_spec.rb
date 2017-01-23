require_relative 'guess_the_press'

describe A_word_guessing_game do 

	it "Should return '?' for the word length" do
		game = A_word_guessing_game.new("puppy")
		expect(game.guessing).to eq "?????"
	end

	it "Should return false" do
		game = A_word_guessing_game.new("puppy")
		@guessing = "pupp?"
		@secret_word = "puppy"
		expect(game.guessed_word).to be false
	end
	it "Will return that out of guesses is true for a count that exceeds condition" do
		game = A_word_guessing_game.new("puppy")
		@count = 12
		@secret_word = "puppy"
		expect(game.out_of_guesses).to be true
	end
	it "Will return true because the letter is included" do
		game = A_word_guessing_game.new("puppy")
		letter = "u"
		@secret_word = "puppy"
		expect(game.check("u")).to be true
	end
	it "should return two letters" do
		game = A_word_guessing_game.new("puppy")
		@letters_guessed = ""
		expect(game.display_letter("b")).to eq "?????"
	end
	it "should return true" do
		game = A_word_guessing_game.new("puppy")
		@guessing = "pupp?"
		@secret_word = "puppy"
		expect(game.guessed_word).to be false
	end












end