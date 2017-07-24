
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

 puts "What is the clients name?"
 decor_theme[:client_name] = gets.chomp
 puts "What is the clients age?"
 decor_theme[:client_age] = gets.chomp.to_i
 puts "How many children does the client have?"
 decor_theme[:children_amount_of] = gets.chomp.to_i
puts "How would you describe the clients style? please seperate each item by a \",\" "

decor_theme[:clients_style] = gets.chomp.split(", ") 
ans1 = ""
ans2 = ""
until ans1 == "no" && ans2 == "no"
	puts decor_theme
	puts "Are there any errors in this hash?"
	ans1 = gets.chomp
	if ans1 == "yes"
		puts "What key has the wrong value?"
		ans = gets.chomp
		puts "What is the right value?"
		decor_theme[ans.to_sym] = gets.chomp
		puts decor_theme
	end


	puts "Are there any other values you need to add? (yes/no)"
	ans2 = gets.chomp
	if ans2 == "yes"
		p "Please enter a key, followed by its value"
		decor_theme[gets.chomp.to_sym] = gets.chomp
	end

end

puts decor_theme