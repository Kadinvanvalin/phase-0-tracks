class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end
class Puppy

  def initialize()
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Woof!" * integer
  end

  def roll_over()
    puts "*rolls over*"
  end

  def dog_years(integer)
    age = integer * 6
    puts age
  end

  def chase_tail()
   puts "How long are you chasing your tail for? (1-10)"
   input = gets.chomp
   input.to_i.times {|x| puts "I've been chasing my tail for #{x} minutes."}
  end

end
duchess = Puppy.new
duchess.fetch("ball")
duchess.speak(3)
duchess.roll_over()
duchess.dog_years(10)
duchess.chase_tail()

class Cat

  def initialize()
    puts "Initializing new cat instance..."
  end

  def meow()
    puts "*meows*"
  end

  def hunting()
    animals = ["mouse", "spider", "cockroach"]
    idx =0
      until idx == 3
      puts "I'm hunting a " + animals[idx] + "."
      idx+=1
      end
  end

end

#Create new cat hash.
new_cats = {

}
#Create 50 new cat instances.
50.times do |key|
  new_cats[key.to_s.to_sym] = Cat.new
end

#Run .meow and .hunting methods on 50 cats.
new_cats.each do |key, value|
  puts "Cat #{key} has been born."
   value.meow
   value.hunting
end

