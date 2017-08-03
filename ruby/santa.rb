class Santa
	def initialize(gender, ethnicity)
		p "Initializing Santa Instance"
		@gender = gender
		@ethnicity = ethnicity
	end
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0 
	def speak
		p "Ho, ho ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}"
	end

	def identify_yourself
		p "Hello, I am  #{@gender}. I Identify as #{@ethnicity}, and I am a Santa"
	end

	
end

def make_some_santa(gender, ethnicity, array_of_santa)
	
	if gender.length == 0 || ethnicity.length == 0
		return array_of_santa
	else 
		array_of_santa << Santa.new(gender.pop, ethnicity.pop)
		make_some_santa(gender, ethnicity, array_of_santa)		
	end

end

def sound_off(array_of_santa)
	if array_of_santa[0].nil?
		p "All Santas acounted for!"
	else	
		array_of_santa.pop.identify_yourself
		sound_off(array_of_santa)
	end
end


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


example_santa = make_some_santa(example_genders, example_ethnicities, [])

sound_off(example_santa)

puts example_santa

# Tim_Allen = Santa.new("agender", "black")

# Tim_Allen.speak
# Tim_Allen.eat_milk_and_cookies("gingerbread cookie")

# Tim_Allen.identify_yourself