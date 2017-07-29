# arr = [42, 89, 23, 1]

# def search_array(array, int)
#  int_found = false
#  count = 0
#  array.each do |arr_index|
#    if arr_index == int
#      int_found = true
#      return count
#    end  
#    count += 1  
#  end
#  if int_found == false
#    nil
#  end
# end

# p search_array(arr, 89)

# p search_array(arr, 1)

# p search_array(arr, 24)


# def fib(int) 
# 	if int == 0
# 		return nil
# 	elsif int == 1
# 		return [0]
# 	elsif int == 2
# 		return [0,1]
# 	end
# 	int = int - 2
# 	array = [0,1]
# 	 	 while int > 0
# 	 	 	array << array[-1] + array[-2]
# 	 	 	int -= 1
# 	 	 end
# 	 	 return array
# end

# p fib(100)[-1] == 218922995834555169026


# function array 
# 	while array has length
# 		if item1 > item2
# 			item1[current index + 1]
# 			item2[current index - 1]
# 		if item2 > item1
# 			item1[current index - 1]
# 			item2[current index + 1]
# 		at the end of the array remove last element
# 		push it to index 0 of a new array.	

# # return new array
	
# def bubblesort(array, new_array) 
	
# 	i = 1
	
# 	array.each do |element|
# 		temp = array[i]
# 		p "element"+ element.to_s
# 	 	if array.length == i + 1
# 	 		p "i"+i.to_s
# 			new_array << array[i]
# 			array.delete_at(i)
# 			p "last block"
# 			p "array" + array.to_s
# 			p "new array" + new_array.to_s
# 			return bubblesort(array, new_array)
				
# 		end

# 		if element > array[i]

# 			p "array" + array.to_s
# 			p "new array" + new_array.to_s
# 			puts "temp before #{temp}"
# 			array[i] = element
# 			puts "temp after #{temp}"
# 			array[i-1] = temp
# 			p element
# 			p array[i]
# 		elsif element < array[i]
# 			array[i + 1] = element
# 			array[i] = temp
				
# 		end
		
# 		i+=1
# 		p new_array
			
			
# 	end

# end
# def bubblesort ary, new_array
# 	i = 0
# 	if ary.length == 0
# 		return new_array
# 	else
# 		ary.each do |number|
			
			
# 			puts i
# 			next_number = ary[i+1]
# 			if next_number == nil
# 				p new_array
# 				p ary
# 				return bubblesort ary, new_array << ary.pop
			

# 			elsif number < ary[i+1]
# 				ary[i+1] = number
# 				ary[i] = next_number
# 			end
# 			i+=1


# 		end
# 	end

#end

def insertsort(array)
	new_array= []
	while array.length > 0
		if new_array.length == 0
			new_array << array.shift
		else
			new_array.each_with_index.map do |element, index|
				if array [0] > element && index = -1
					new_array << array.shift
				elsif array[0] > element
					#do nothing
				else 
					new_array.insert(index, array.shift)
				end
			end
		end
	end
	return new_array
end
 p bubblesort([0, 30, 50, 88, 3, 100, 20, 1 , 3,2], [])

 def insertsort(array)
	new_array= []
	while array.length > 0
		if new_array.length == 0
			new_array << array.shift
		else
			new_array.each_with_index.map do |element, index|
			  puts index
			  p new_array
			  p array
			  if array == []
			    return new_array
				elsif array[0] >= element && index==new_array.length - 1
				  p "pop"
					new_array << array.shift
				elsif array[0] < element && array[0] >= new_array[index-1]
				 
						new_array.insert(index, array.shift)
				
				end
			end
		end
	end
	return new_array
end
 p insertsort([0, 30, 50, 88, 3, 100, 20, 1 , 3,2])