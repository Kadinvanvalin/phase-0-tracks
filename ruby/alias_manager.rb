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

vowel=["a", "e", "i", "o", "u"]
consonant=["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

def encode name
	array = name.chars
	p array
end





puts "Please enter your first name."
first_name = gets.chomp
# puts "Please enter your last name."
# last_name = gets.chomp
encode first_name