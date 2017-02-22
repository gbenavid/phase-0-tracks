require 'sqlite3'
require 'faker'
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
# README: Money Management--
	# Create data: Insert themselves into the database
	# Retrieve data: Too view your spending
	# Manipulate data: Update their remaining balance
def add_user(db, name, merchant, budget, remaining)
  db.execute("INSERT INTO users (name, merchant, budget, remaining) 
  	VALUES (?, ?, ?, ?)", [name, merchant, budget, remaining]
  	)
end

def display_user(db, name)
	array = db.execute("SELECT * FROM users WHERE name=(?)", [name])
	result = array[0]
	puts "You currently have a $#{result[3]} budget set for #{result[2]}."
end

def update_remaining(db, new_value_at_remaining, name)
	db.execute("UPDATE users SET remaining= ? WHERE name = ?", [new_value_at_remaining, name])
	array = db.execute("SELECT * FROM users WHERE name=(?)", [name])
	puts "Your account currently reflects that you now have $#{array[0][4]} left to spend at #{array[0][2]}"
end
[[]]
# UI
puts "Welcome to the Financial Tracker 2000. Please select one of the options by entering the corresponding number:"
	puts <<-UI
	[1] I'm a new user!
	[2] I'd like to see my curent account balance.
	[3] I'd like to update my balance.
	UI
# DRIVER CODE:
option = gets.chomp.to_i
# LOGIC
if option == 1
	puts "Welcome! Let's start tracking your daily spending. \nPlease enter the following fields. \nName: "
	name = gets.chomp
	puts "Now, think about an unfixed bill you have. Please provide the merchants name below (i.g. 'Starbucks'):"
	merchant = gets.chomp
	puts "Now enter the max amount of money you are willing to spend at that venue per month:"
	budget = gets.chomp.to_i
	remaining = budget
	add_user(db, name, merchant, budget, remaining)
elsif option == 2
	puts "Now you can view your financial records, just enter your name:"
	name = gets.chomp
	display_user(db, name)
elsif option == 3
	puts "What's your name?"
	name = gets.chomp
	puts "What is your new remaining value?"
	balance = gets.chomp.to_i
	update_remaining(db, balance, name)
else
	puts "Opps, sorry that's not a valid option. Goodbye."
end