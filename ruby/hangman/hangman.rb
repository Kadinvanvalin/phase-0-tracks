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
	end

	def guess(character)
		if character.length == 1 && character =~ /[a-zA-z]/
			@guesses -= 1
			@guessed_characters << character
		else
			"that is an incorrect value."
		end
	end

	def render
		to_render = ""
		@word.split("").each do |real_char|
			if guessed_characters.length == 0
				return ("_ " * @word.length).strip
			else
				guessed_characters.each do 	|guessed_character|
					if guessed_character == real_char
						to_render += guessed_character.upcase
					else
						to_render += "_ "
					end
				end
			end

		end

		to_render.strip
	end
end
