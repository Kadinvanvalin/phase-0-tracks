require 'sqlite3'


# create SQLite3 database
db = SQLite3::Database.new("flash_cards.db")
score = 0
prependstring = "::flash card 1,000::"


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS flash_cards(
    id INTEGER PRIMARY KEY,
    question VARCHAR(255),
    answer VARCHAR(255)
  )
SQL


db.execute(create_table_cmd)

def create_flash_cards(db, question, answer)
  db.execute("INSERT INTO flash_cards (question, answer) VALUES (?, ?)", [question, answer])
end


def delete_flash_cards(question)
	db.execute("DELETE FROM flash_cards WHERE question=(question) VALUES (?);",[question])
end
def display_flash_cards(db)
	cards = db.execute("SELECT * FROM flash_cards")
	cards.each do |card|
		p "#{card[0]} :: #{card[1]}:::#{card[2]}"
	end 
end
def run_flash_cards(db, score)
		cards = db.execute("SELECT * FROM flash_cards")
		cards.each do |card|
				p "#{card[1]} press enter when ready"
				gets.chomp
				p "#{card[2]} did you get it right? (YES/NO)"
				if(gets.chomp == "YES")
					score += 1
				end
				p score

		end
end

while true
	p "::flash card 1,000::What would you like to do? (DELETE,CREATE,DISPLAY,RUN)"
	user_input = gets.chomp
	if(user_input == "CREATE")
		p  "please enter the card question"
		question = gets.chomp
		p "please enter the answer"
		answer = gets.chomp
		p "thank you"
		create_flash_cards(db, question,answer)
	elsif (user_input== "DISPLAY")
		display_flash_cards(db)
	elsif(user_input=="RUN")
		run_flash_cards(db, score)
	end
			
#kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end


end