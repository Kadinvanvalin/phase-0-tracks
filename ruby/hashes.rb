
# for each, prompt user for input
# 		clients name
# 		age 
# 		number of children
# 		decor theme
# convert to the right data type
# print the hash back
# 		REPEAT until both good
# 		let the user fix an error
# 		ler the user update a key
# print latest, exit		

decor_theme = {
	client_name: nil,
	client_age: nil,
	children_amount_of: nil,
	clients_style: []

}

# puts "What is the clients name?"
# client_name = gets.chomp
# puts "What is the clients age?"
# client_age = gets.chomp.to_i
# puts "How many children does the client have?"
# children_amount_of = gets.chomp.to_i
 puts "How would you describe the clients style? please seperate each item by a \",\" "

decor_theme[:clients_style] = gets.chomp.split(", ") 


puts decor_theme