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
    date VARCHAR(255),
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

# calulate day method
def calc_day(date)
  DateTime.parse(date).to_date.dayname
end

# add log method
def add_log(db, date, activity, time, distance, sets, reps, weight_lbs)
  day_of_week = calc_day(date)
  db.execute("INSERT INTO logs (date, day, activity, time, distance, sets, reps, weight_lbs) VALUES (?, '#{day_of_week}', ?, ?, ?, ?, ?, ?)", [date, activity, time, distance, sets, reps, weight_lbs])
end

# delete log method
def delete_log(db, date, activity=1777280)
  if activity == 1777280
    db.execute("DELETE FROM logs WHERE ?=date", [date])
  else
    db.execute("DELETE FROM logs WHERE date=? AND activity=?", [date, activity])
  end
end

# update log method
def update_log(db, attr_name_to_change, update_value, date, activity)
  db.execute("UPDATE logs SET #{attr_name_to_change}=? WHERE date=? AND activity=?", [update_value, date, activity])
end




# TEST CODE

add_log(db, Date.today.to_s, "bench press", "N/A", "N/A", 5, 5, 135)
add_log(db, "2016-06-03", "squat", "N/A", "N/A", 5, 5, 135)
delete_log(db, "2016-06-03", "squat")
update_log(db, "distance", "changed", Date.today.to_s, "bench press")

# .mode column
# .headers on









