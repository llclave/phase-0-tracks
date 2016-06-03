# GYM LOG CODE
require 'sqlite3'
require 'date'

class Date
  def dayname
     DAYNAMES[self.wday]
  end
end

# initialize database and tables
# create logs table
db = SQLite3::Database.new("log.db")
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

# create dates table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS dates(
    id INTEGER PRIMARY KEY,
    date VARCHAR(255),
    UNIQUE(id, date)
  )
SQL
db.execute(create_table_cmd)

# add dates to dates table
date_from  = Date.parse('2016-06-01')
date_to    = Date.parse('2017-06-01')
date_range = date_from..date_to
date_range.each {|date|
  db.execute("INSERT INTO dates (date) VALUES ('#{date.to_s}')")
}



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
#p db.execute("SELECT id from logs where date='2016-06-07'")[0][0].class




# SELECT id from logs where date="2016-06-07";
# .mode column
# .headers on



# If you never want to have duplicates, you should declare this as a table constraint:
# CREATE TABLE bookmarks(
#    users_id INTEGER,
#    lessoninfo_id INTEGER,
#    UNIQUE(users_id, lessoninfo_id)
#);




