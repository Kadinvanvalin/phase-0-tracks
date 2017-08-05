require_relative 'hangman'
	
describe Hangman do
	let(:mygame) {Hangman.new("jazz")}
	it "should store a word" do
		expect(mygame.word).to eq("jazz")
	end
	it "should render guesses equal to length of word plus 5"
		expect(mygame.guesses).to eq(9)
	end	

end