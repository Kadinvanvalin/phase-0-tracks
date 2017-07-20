def encrypt string
	counter = 0
	result = ""
	while counter < string.length
		result += string[counter].next
		counter += 1
	end
	return result
end



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