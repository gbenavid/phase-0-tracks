require 'sqlite3'
require 'faker'
# Tracking CASH before you spend it:
	# Create data: Insert themselves into the database
	# Retrieve data: Too view your spending
	# Manipulate data: Update their remaining balance

db = SQLite3::Database.new("users.db")
create_table = <<-USER_TABLE
	CREATE TABLE IF NOT EXISTS users(
	  id INTEGER PRIMARY KEY,
	  name VARCHAR(255),
	  merchant VARCHAR(255),
	  budget INT,
	  remaining INT 
	)
USER_TABLE
db.execute(create_table)

# UI FOR ADDING A USER
	# puts "Welcome! Let's start tracking your daily spending. \nPlease enter the following fields. \nName: "
	# name = gets.chomp

	# puts "Now, think about an unfixed bill you have. Please provide the merchants name below (i.g. 'Starbucks'):"
	# merchant = gets.chomp

	# puts "Now enter the max amount of money you are willing to spend at that venue per month:"
	# budget = gets.chomp.to_i
	# remaining = budget
def add_user(db, name, merchant, budget, remaining)
  db.execute("INSERT INTO users (name, merchant, budget, remaining) 
  	VALUES (?, ?, ?, ?)", [name, merchant, budget, remaining]
  	)
end
# add_user(db, name, merchant, budget, remaining)

# UI FOR DISPLAY USER
	# puts "Now you can view your financial records, just enter your name:"
	# name = gets.chomp
def display_user(db, name)
	array = db.execute("SELECT * FROM users WHERE name=(?)", [name])
	puts "You currently have a $#{array[0][3]} budget set for #{array[0][2]}."
end
# display_user(db, name)

# Manipulate data: Update their spending
	puts "what's your name?"
	name = gets.chomp
	puts "What is your new remaining value?"
	balance = gets.chomp.to_i

def update_remaining(db, new_value_at_remaining, name)
	db.execute("UPDATE users SET remaining= ? WHERE name = ?", [new_value_at_remaining, name])
	array = db.execute("SELECT * FROM users WHERE name=(?)", [name])
	puts "Your account currently reflects that you now have $#{array[0][4]} left to spend at #{array[0][2]}"
end
update_remaining(db, balance, name)




















