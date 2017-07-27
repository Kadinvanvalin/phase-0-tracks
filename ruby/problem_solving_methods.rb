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