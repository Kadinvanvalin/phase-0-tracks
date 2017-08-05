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

	attr_reader :word, :guesses

	def initialize(word)
		@word = word
		@guesses = word.length + 5
	end

	def guess(character)
		@guesses -= 1
	end
end
