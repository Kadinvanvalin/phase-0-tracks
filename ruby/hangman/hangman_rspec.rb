require_relative 'hangman'
	
describe Hangman do

	let(:mygame) {Hangman.new("jazz")}

	it "should store a word" do
		expect(mygame.word).to eq("jazz")
	end

	it "guesses for jazz should be 9" do
		expect(mygame.guesses).to eq(9)
	end	
	it "guesses for programming should be 16" do
		newgame = Hangman.new("programming")
		expect(newgame.guesses).to eq(16)
	end
	it "guessing a char should reduce guesses by one" do
		mygame.guess("h")
		expect(mygame.guesses).to eq(8)
	end
	it "guessing a char should push guess to array" do
		mygame.guess("h")
		expect(mygame.guessed_characters).to eq(["h"])
	end
	

end