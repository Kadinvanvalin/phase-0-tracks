# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
    #create a hash
 # split the items by a space
 #  for each item push it as a symbol into our hash
         # set default quantity 1
 # invoke method to print a list
# output: [hash]

def create_list(string)
  list = {}
  item_array = string.split(" ")
  item_array.each do |item|
    list[item] = 1    
  end
  print_list(list)
  list
end

# Method to add an item to a list
# input: hash, item name, and optional quantity
# steps:add the item as a symbol to the hash
        #set default quantity 1
        #unless user put in a quantity, then use that quantity
        # steps: give user feedback that item has been added
# output: this creates an updated list

def add_item(list, item_name, quantity = 1)
  list[item_name] = quantity
  puts "Your #{item_name} has been added"
end

# Method to remove an item from the list
# input:String of item to remove, hash
# steps:Convert item to symbol, find and delete item from hash
# steps: give user feedback that item has been deleted
# output: updated list

def remove_item(list, item_name)
  list.delete(item_name)
  puts "Your #{item_name} has been removed"
end

# Method to update the quantity of an item
# input:string of item, new quantity, hash
# steps: change the string to a symbol update quantity
# steps: give user feedback that item has been changed
# output:updated list

def update_quantity(list, item_name, new_quantity)
  list[item_name] = new_quantity
  puts "Your #{item_name} has been updated to #{new_quantity}"
end

# Method to print a list and make it look pretty
# input:hash
# steps:Print title
#iterating over the hash and printing the keys and values
# output:pretty hash

def print_list(list)
  puts "--------------------"
  puts "Your Grocery List:"
  list.each { |item, quantity| puts "#{item} : #{quantity}" }
  puts "--------------------"
end


### Driver Code

list = create_list("apple banana oatmeal")
add_item(list, "mango")
remove_item(list, "apple")
update_quantity(list, "oatmeal", 5)
print_list(list)


### Reflections
=begin
What did you learn about pseudocode from working on this challenge?

It is really frusterating, but it helps you break the problem down and makes it easier to actually talk about and plan.

What are the tradeoffs of using arrays and hashes for this challenge?


What does a method return?

Implictly the last line! So don't puts something on the last line unless thats what you want returned!

What kind of things can you pass into methods as arguments?

arrays, hash, int, float, string, functions?

I know that functions in javascript are first class objects, but I can't really tell how ruby treats them.
I think that you can pass them around like I can in javascript, I just can't add attributes and methods to them?

How can you pass information between methods?
In this code we just put our array in a variable and passed it into the functions with parameters.

What concepts were solidified in this challenge, and what concepts are still confusing?
It was interesting to play "follow the return" with our nil error. I know I have a tendancy to be "lazy" with my variable names. 
but I can tell where good names, and consistant names are important. Pseudocode is still "confusing" I'm glad I had the chance to work on 
it some more, but its hard to verbalise what you want to do without just doing it.


=end