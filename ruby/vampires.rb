puts "What is your name?"
employee_name = gets.chomp
puts "How old are you?" 
age = gets.chomp
puts "What year were you born?"
dob = gets.chomp
puts "Our company cafereia serves Galic bread. should we order some for you? Please enter yes or no"
like_garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance? Please enter yes or no"
insurance = gets.chomp





def bool_converter(string) 
		if string == "yes"
			return true
		elsif string == "no"
			return  false
		end
end	

like_garlic_bool = bool_converter(like_garlic)
insurance_bool = bool_converter(insurance)	

puts like_garlic_bool
puts insurance_bool


# if age.to_i < 100 && like_garlic || insurance
# 	puts "test"
# end