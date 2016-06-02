# GYM LOG CODE
require 'sqlite3'
require 'date'

class Date
  def dayname
     DAYNAMES[self.wday]
  end
end

# initialize database and table
db = SQLite3::Database.new("gym_log.db")
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS logs(
    id INTEGER PRIMARY KEY,
    date TEXT,
    day VARCHAR(255),
    activity VARCHAR(255),
    time VARCHAR(255),
    distance VARCHAR(255),
    sets INT,
    reps INT,
    weight_lbs FLOAT
  )
SQL
db.execute(create_table_cmd)

# add log method
def add_log(date, day, activity, time, distance, sets, reps, weight_lbs)
  db.execute("INSERT INTO logs (date, day, activity, time, distance, sets, reps, weight_lbs) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [date, day, activity, time, distance, sets, reps, weight_lbs])
end



# .mode column
# .headers on
# DateTime.parse("2016-06-07").to_date.dayname