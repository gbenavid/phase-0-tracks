# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static' # Configure this app to serve these static files.

db = SQLite3::Database.new("students.db") # creting a new db w/ the student info
db.results_as_hash = true #recieving our database results as a hash

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students") # getting our students, the @ sign lets us set a var that is accessible in our template
  erb :home #This is how we return the home erb file, makeing a template to return. Erb is a method, and it's parameter is home
end

get '/students/new' do
  erb :new_student
end

# create new students via a form
post '/students' do # We use POST instead of GET
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/correct/name' do
	erb :change_name
end

post '/correct/name' do
	# p params
	db.execute("UPDATE students SET name=(?) WHERE id=(?)", [params['name'], params['id'].to_i])
	redirect '/'
end

# add static resources-- use JS & CSS w/o creating new routes.
