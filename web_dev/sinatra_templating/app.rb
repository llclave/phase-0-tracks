# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS campuses(
    id INTEGER PRIMARY KEY,
    campus VARCHAR(255)
  )
SQL
db.execute(create_table_cmd)

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources



get '/students/roster' do
  @students = db.execute("SELECT * FROM students")
  erb :student_roster
end

get '/students/roster/survey' do
  @campuses = db.execute("SELECT * FROM campuses")
  erb :survey
end


post '/campuses' do
  campus = [params['campus'].upcase]
  insert = true
  campuses = db.execute("SELECT campus FROM campuses")
  
  campuses.each do |campus_loop|
    if campus_loop["campus"] == params['campus'].upcase
      p campus_loop["campus"]
      p params['campus'].upcase
      insert = false
    end
  end
  
  if params['campus'] != "" && insert == true
    db.execute("INSERT INTO campuses (campus) VALUES (?)", campus)
  end
  redirect '/students/roster'
end




