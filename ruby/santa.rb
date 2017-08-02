class Santa
	def initialize
		p "Initializing Santa Instance"
	end

	def speak
		p "Ho, ho ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}"
	end

	
end

Tim_Allen = Santa.new

Tim_Allen.speak
Tim_Allen.eat_milk_and_cookies("gingerbread cookie")