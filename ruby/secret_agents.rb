
#look at the first char in a string, call the next method, save that char, repeat until no more chars left
def encrypt string
	counter = 0
	result = ""
	while counter < string.length
		result += string[counter].next
		counter += 1
	end
	return result
end


#look at the first char in a string, find the index of that char in the alphabet, remove one from that index
#save that letter repeat
def decrypt string
	counter = 0
	result = ""
	alpha = "abcdefghijklmnopqrstuvwxyz"
	while counter < string.length
		result += alpha[alpha.index(string[counter])-1]
		counter += 1
	end
	return result
end
#ask if they want to decrypt or encrypt, keep asking if they answer doesnt make sense
#ask for a password, decrypt or encrypt the password depending on what they picked
def interface
	puts "Do you want to encrypt or decrypt a password?"
	input = gets.chomp
	if input != "encrypt" || "decrypt"
	  puts "Please enter valid input."
		interface
	end
	puts "What is the password?"
	password = gets.chomp

	if input == "encrypt"
		p encrypt(password)
	elsif input == "decrypt"
		p decrypt(password)
	end
end

interface 


#decrypt(encrypt("swordfish"))
#the decrypt method is ran on the evaluation of encrypt("swordfish")