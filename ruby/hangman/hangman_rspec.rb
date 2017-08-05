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
	it "should reject a multichar guess" do
		mygame.guess("hj")
		expect(mygame.guessed_characters).to eq([])
	end
	it "should not let a rejected guess reduce guesses" do
		mygame.guess("hj")
		expect(mygame.guesses).to eq(9)
	end
	it "should reject non-alphabet chars" do
		mygame.guess(".")
		expect(mygame.guessed_characters).to eq([])
	end
	it "should return a error string for wrong values" do
		expect(mygame.guess(".")).to eq("that is an incorrect value.")
	end
	
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

end