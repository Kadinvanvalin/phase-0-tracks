# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# p Shout.yell_angrily("I am angrily yelling")

# p Shout.yelling_happily("I am happily yelling")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yelling_happily(words)
			words + "!!!" + " :)"
	end
end

class Debugging_Session
		include Shout
end

class Programming_Session
	include Shout

end

kadin = Programming_Session.new


p kadin.yelling_happily("I am coding")

kadin = Debugging_Session.new

p kadin.yell_angrily("Why doesn't it work?")

p kadin.yelling_happily("I found the bug")