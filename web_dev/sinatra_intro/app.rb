# require gems
require 'sinatra'
require 'SQLite3'
db = SQLite3::Database.new("students.db")
db.results_as_hash = true
# write a basic GET route
# add a query parameter
# GET /
# If you want to be able to reply to a GET call from the root directory.

# get '/' do 
#   "<h1><a href='https://www.google.com/'>HELLO</a> WORLD!</h1>"
# end

# The code above is saying, whenever we get a GET HTTP call to this path-- this resource (/ --root in this case, basically the home directory) send 'HELLO WORLD' back. This isn't HTML its just a string, the browser is going to read it as HTML, it's just not very good HTML. The important thing is that this method needs to return a string. This is basically a method that corresponds to a certain call that might be made from the browser. If we don't return a string really weird things happen, you'll end up getting error messages. Eventually we'll learn more sophisticated HTML stings, but for now, we can just return a simple string. 

# If we ran this right now we've started a sort of web server that is waiting for connections. The port is currently 4567, but we aren't publishing our app to the internet, what we're doing is having our computer act as a web server that only we can get to. So we're the only people who can go to this port in our browser and see what happens there. SO this is basically the idea of a local web server. Meaning you can use your computer as a webserver so you can view your work, it's not really published to the internet your computer is basically talking to itself by acting both as the web server and client. but it's a nice way to develop your applications becuase you can preview everything without actually publish anything to the internet. Soport 4567 notice that we dont have an IP address, your computer does have an IP address for visiting your own computer in a browser, which is your local host. 
# So in a browser we could go to 'localhost:4567' and we get our "HELLOW WORLD". We can inspect our network traffic, and repeat the request, and we can see that our browser has made an HTTP request.

# If we run with shotgun we can see that our new port is 9393. So we can run with with local host and not have to shut down our entire server every time we want to reload our app. 
# now how do we get information to a how do we add information that tells the route how to behave. the first one is a query parameter, is a set of key value pairs that are added to a URL, 

get '/' do
  # whatever query parameters are sent, sinatra stores them for you and you can access them if you want to but you have to access them in an object, a hash called params. That's where you're going to get any data that was put in the url. 
  name = params[:name] # Now we have a simple dynamic web application. 
  if name
    "HELLO, #{name}!"
  else
    "Hello, You..."
  end
end
# If it's Ruby you can use it in here, as long as you can keep in mind the odd syntax of the beginning line... and the oddness of needing to use params to access data available to the server. There's allot of ruby logic you could do in here. 

get '/contact' do
  "For more information please contact, Lorena at our main line at DBC: 123-1234-1234 EX 2"
end

get '/great_job/:name' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# If you want to have multiple parameters you put an & in the query
get '/' do 
  "#{params[:name]} is #{params[:age]} years old."
end  
# run 'http://localhost:9393/?name=Giina&age=20'
# So this is one way to get information to a server, is by making a request, by adding these parameters. If we look at the request itself we'll actually see that, you can see that some query string params were sent, some K-V pairs, and then the server recieved this in the form of params that we could access. this is a more traditional way of passing data. 
# Theses days were a little more modern . 
get '/about/:person' do #to pass some piece of data in that we want to access we use this :person syntax. This isn't a query parameter, its actually apart of the route. It's going to get matched. It's part of the URL itself. We can still acces it with params just the same way. 
  person = params[:person] #this param will run regardless of what is passed in it
  "#{person} is a programmer, and #{person} is learning Sinatra." #So we can do a get on any route now that we know how to do this. 
  # http://localhost:9393/about
end
# The two ways on a GET request to pass information is query parameters that have the sort of K-V syntax. and route parameters that are just like arguments to a method.

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]} :)"
end

get '/:num1/plus/:num2' do
  result = params[:num1].to_i + params[:num2].to_i
  "Your result is #{result}"
end


# Let's write a route that might be useful to a user:
get '/students' do 
  students = db.execute("SELECT * FROM students")
  students.to_s
end

# And now lets make that more readable:
get '/students-readable' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end
# Now we can meaningfully query data, and let the user have access to their information via a web application. 
# Typically there would be some fancy HTML template in Sinatra where these values would get dropped in, right now we're just getting the idea of what it means to write ruby code that can respond to a certain call to a certain HTTP request and send something back.

get '/my-cohort/:campus' do
  student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  cohort = ""
  student.each do |student|
    cohort << "#{student['name']}<br>"
  end
  cohort
end
# write a GET route with
# route parameters

# write a GET route that retrieves
# all student data

# write a GET route that retrieves
# a particular student


















=begin
  # require gems
  require 'sinatra'
  require 'sqlite3'

  db = SQLite3::Database.new("students.db")
  db.results_as_hash = true

  # write a basic GET route
  # add a query parameter
  # GET /
  get '/' do
    "#{params[:name]} is #{params[:age]} years old."
  end

  # write a GET route with
  # route parameters
  get '/about/:person' do
    person = params[:person]
    "#{person} is a programmer, and #{person} is learning Sinatra."
  end

  get '/:person_1/loves/:person_2' do
    "#{params[:person_1]} loves #{params[:person_2]}"
  end

  # write a GET route that retrieves
  # all student data
  get '/students' do
    students = db.execute("SELECT * FROM students")
    response = ""
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
    response
  end

  # write a GET route that retrieves
  # a particular student

  get '/students/:id' do
    student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
    student.to_s
  end
=end