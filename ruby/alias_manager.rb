# ask user for first name then last name
# add to hash 
# code first name and last name
#force lowercase
# 1 check if each letter is vowel or cons
#      ** use a string and is_in method to check which string the letter is in
# 2 convert each letter by passing letter and vowel or cons param into method
# ******* pass the string vowel or cons into method, 
#find the index of val in the string, add one to index "handle edge case" by changing last index to first 
#add uppercase to name
#return encrypted name into has with real name
#print name
def check_char char
	vowel=["a", "e", "i", "o", "u"]
	consonant=["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	if vowel.include?(char)
		return vowel
	elsif consonant.include?(char)
		return consonant
	else
		puts "you entered an invalid char value."
	end
			
end

def change_char array, char
	array.at(array.index(char)+1)
	
end


def encode name
	array = name.downcase.chars
	array.map do |char|
		change_char(check_char(char), char)
	end.join.capitalize

end


full_name = nil
until full_name == "quit"
		puts "Alias_Manager 1.0::Please enter your first and last name. Type quit to exit...."
		full_name = gets.chomp
	if full_name == "quit"
		puts "Alias_Manager 1.0::Thank you, goodbye"
	else
		first_name = full_name.split(" ")[0]
		last_name = full_name.split(" ")[1]
 		puts "Alias_Manager 1.0::#{full_name} is known as #{encode(last_name)} #{encode(first_name)}"
	end
end
 