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

require 'sqlite3'
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
db.execute("INSERT INTO users (name, merchant, budget, remaining) VALUES ('Gina', 'Wild Lotus Swim', 2000, 1000)")

# def add_user(db, name, merchant, budget, remaining)
#   db.execute("INSERT INTO users (name, merchant, budget, remaining) VALUES (?, ?)", [name, merchant, budget, remaining])
# end










