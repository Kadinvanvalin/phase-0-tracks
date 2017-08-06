require_relative 'hangman'
	
describe Hangman do
let(:mygame) {Hangman.new("jazz")}

	describe "word method" do
		
		it "should store a word" do
			expect(mygame.word).to eq("jazz")
		end
	end

	describe "guesses attr" do
		
		it "for jazz should be 9" do
				expect(mygame.guesses).to eq(9)
			end	

		it "for programming should be 16" do
			newgame = Hangman.new("programming")
			expect(newgame.guesses).to eq(16)
		end

		it "guessing a char should reduce guesses by one" do
			mygame.guess("h")
			expect(mygame.guesses).to eq(8)
		end

		it "should not let a guessing a char twice reduce guesses" do
			mygame.guess("h")
			mygame.guess("h")
			expect(mygame.guesses).to eq(8)
		end


		it "should not let a rejected guess reduce guesses" do
			mygame.guess("hj")
			expect(mygame.guesses).to eq(9)
		end
		
	end
	
	describe "guess method" do

		it "guessing a char should push guess to array" do
			mygame.guess("h")
			expect(mygame.guessed_characters).to eq(["h"])
		end

		it "should reject a multichar guess" do
			mygame.guess("hj")
			expect(mygame.guessed_characters).to eq([])
		end
		
		it "should reject non-alphabet chars" do
			mygame.guess(".")
			expect(mygame.guessed_characters).to eq([])
		end

		it "should return a error string for wrong values" do
			expect(mygame.guess(".")).to eq("that is an incorrect value.")
		end
		it "should not save the same char twice" do
			mygame.guess("j")
			mygame.guess("j")
			expect(mygame.guessed_characters).to eq(["j"])
		end

	end

	describe "render method" do

		it "should render jazz as _ _ _ _" do
			expect(mygame.render).to eq("_ _ _ _")
		end

		it "should render jazz with a guess of j as J_ _ _" do
			mygame.guess("j")
			expect(mygame.render).to eq("J_ _ _")
		end

		it "should render jazz with a guess of z as _ _ ZZ" do
			mygame.guess("z")
			expect(mygame.render).to eq("_ _ ZZ")
		end

		it "should render jazz with a guess of z and j as J_ ZZ" do
			mygame.guess("z")
			mygame.guess("j")
			expect(mygame.render).to eq("J_ ZZ")
		end
		it "should render jass with all chars guessed as JAZZ" do
			mygame.guess("j")
			mygame.guess("a")
			mygame.guess("z")
			expect(mygame.render).to eq("JAZZ")
		end

		describe "check_game_state" do
			mygame = Hangman.new("jazz")
			it "should taunt the user if the guesses are used up" do
				["a","b","c","d","e","f","g","h","i"].each do |guess|
					mygame.guess(guess)
				end
				expect(mygame.check_game_state).to eq("You didn't get the word")
			end

			it "should tell the user they won if they guess all the chars" do
				["j","a", "z"].each do |guess|
					mygame.guess(guess)
				end
				expect(mygame.check_game_state).to eq("congrats! You won!")	
			end
				
		end
	end




	

	
	
	
	
end