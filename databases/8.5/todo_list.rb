require 'sqlite3'
# Write a Ruby program that makes someone else's life better.
	# Tracking CASH before you spend it:
		# Create data: Insert their most frequented markets & set budgets
		# Retrieve data: Too view your remaining budget
		# Manipulate data: Update their spending
# Users information:
	# integer primary key INT
	# user_name VARCHAR(255)
	# favorite merchant VARCHAR(255)
	# budget INT
	# remaining INT
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
# puts "Welcome! Let's start tracking your daily spending. \nPlease enter the following fields. \nName: "
# name = gets.chomp

# puts "Now, think about an unfixed bill you have. Please provide the merchants name below (i.g. 'Starbucks'):"
# merchant = gets.chomp

# puts "Now enter the max amount of money you are willing to spend at that venue per month:"
# budget = gets.chomp.to_i
# remaining = budget
def add_user(db, name, merchant, budget, remaining)
  db.execute("INSERT INTO users (name, merchant, budget, remaining) VALUES (?, ?, ?, ?)", [name, merchant, budget, remaining])
end
# add_user(db, name, merchant, budget, remaining)
puts "Now you can view your financial records, just enter your name:"
name = gets.chomp
def display_user(db, name)
	db.execute("SELECT * FROM users WHERE name=(?)", [name])
end
display_user(name)









