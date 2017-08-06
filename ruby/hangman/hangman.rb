=begin
keep track of guesses, probably an array
keep the final word, initalize the object with final word
render the final word based on the guesses, _ on letters that haven't been guessed
create a number of guesses allowed based on length of word
check user input, make sure its only one char at a time
	force all char to upper
	no symbol chars, only alphabet

driver code
	query user one for word,
		reject word if symbols are used
	let user know that word is accepted and game will begin 
	
	query second user for a guess displaying the word with _ instead of letters
		display number of guesses left
		if the guess is right render the letter in the right place
	repeat until all the guesses are used OR the word is guessed and displayed		

=end

class Hangman

	attr_reader :word, :guesses, :guessed_characters

	def initialize(word)
		@word = word
		@guesses = word.length + 5
		@guessed_characters = []
		@letters_left = word.length
		@game_over = false
		@won = nil
		
	end

	def guess(character)
		if @guessed_characters.include?(character)
			"You already guessed that"
		elsif character.length == 1 && character =~ /[a-zA-z]/
			@guesses -= 1
			@guessed_characters << character
		else
			"that is an incorrect value."
		end
	end

	def render
		to_render = ""
			@word.split("").each do |real_char|
				if @guessed_characters.include?(real_char) 
					to_render += @guessed_characters[@guessed_characters.index(real_char)].upcase
				else
					to_render += "_ "
				end	
			end
		to_render.strip
	end
	def check_game_state
		@word.split("").each do |real_char|
				if @guessed_characters.include?(real_char) 
					@letters_left = @letters_left - 1
				end
			end
		
		if @letters_left <= 0
			@won = true
			@game_over = true
			p "congrats! You won!"		
		elsif guesses == 0
			@won = false
			@game_over = true
			p "You didn't get the word"
		end
		@letters_left = word.length		
	end

	def run_game
		until @game_over
			guess(gets.chomp)
			p render
			 check_game_state
		end
	end
end

p "enter a word for player 2 to guess"
mygame = Hangman.new(gets.chomp)
puts "_________________________________\n" * 25
mygame.run_game