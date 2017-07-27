arr = [42, 89, 23, 1]

def search_array(array, int)
 int_found = false
 count = 0
 array.each do |arr_index|
   if arr_index == int
     int_found = true
     return count
   end  
   count += 1  
 end
 if int_found == false
   nil
 end
end

p search_array(arr, 89)

p search_array(arr, 1)

p search_array(arr, 24)


def fib(int) 
	if int == 0
		return nil
	elsif int == 1
		return [0]
	elsif int == 2
		return [0,1]
	end
	int = int - 2
	array = [0,1]
	 	 while int > 0
	 	 	array << array[-1] + array[-2]
	 	 	int -= 1
	 	 end
	 	 return array
end

p fib(100)[-1] == 218922995834555169026


