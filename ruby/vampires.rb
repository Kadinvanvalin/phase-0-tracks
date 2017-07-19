def process_Multiple int
  i = 0
  until i == int
    puts "What is your name?"
    employee_name = gets.chomp
    puts "How old are you?" 
    age = gets.chomp
    puts "What year were you born?"
    dob = gets.chomp
    puts "Our company cafereia serves Garlic bread. should we order some for you? Please enter yes or no"
    like_garlic = gets.chomp
    puts "Would you like to enroll in the company's health insurance? Please enter yes or no"
    insurance = gets.chomp
    needs_eval = true
    allergies = nil
    while allergies != "done"
      puts "Please list any allergies you may have, when you are finished, type done"
      allergies = gets.chomp
      if allergies == "sunshine"
        puts "#{employee_name} is probably a Vampire"
        needs_eval = false
        break
      end
    end

      if needs_eval
      def bool_converter(string) 
        if string == "yes"
          return true
        elsif string == "no"
          return  false
        end
      end 

      like_garlic_bool = bool_converter(like_garlic)  
      insurance_bool = bool_converter(insurance)  
      if employee_name == "Drake Cula" || "Tu Fang"
        
        puts "#{employee_name} is Definitely a Vampire"
      elsif age.to_i > 100 && !like_garlic_bool && !insurance_bool
        puts "#{employee_name} is almost certainly a Vampire"
      elsif age.to_i > 100 && like_garlic_bool || insurance_bool
        puts "#{employee_name} is probably a vampire"
      elsif age.to_i < 100 && like_garlic_bool || insurance_bool
        puts "#{employee_name} is probably not a Vampire"
      else 
        puts "Results inconclusive for #{employee_name}"
      end
  end
end
 i += 1
end


puts "how many Employees are you processing?"
number_of_employees = gets.chomp.to_i

process_Multiple number_of_employees
