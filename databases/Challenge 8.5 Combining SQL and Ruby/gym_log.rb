# GYM LOG CODE
require 'sqlite3'
require 'date'

# included date class to add dayname method which determines day from date
class Date
  def dayname
     DAYNAMES[self.wday]
  end
end
# calulate day method
def calc_day(date)
  DateTime.parse(date).to_date.dayname
end


# INITIALIZE DATABASE AND TABLES
# create logs table
$db = SQLite3::Database.new("log.db")
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS logs(
    id INTEGER PRIMARY KEY,
    day VARCHAR(255),
    activity VARCHAR(255),
    time VARCHAR(255),
    distance VARCHAR(255),
    sets INT,
    reps INT,
    weight VARCHAR(255),
    date_id INT
  )
SQL
$db.execute(create_table_cmd)

# create history table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS history(
    id INTEGER PRIMARY KEY,
    loaded_dates INT
  )
SQL
$db.execute(create_table_cmd)
$db.execute("INSERT INTO history (loaded_dates) VALUES (0)")


# conditional statement to determine whether to load dates into database
if $db.execute("SELECT loaded_dates from history where id=1")[0][0] == 0
  # create dates table
  create_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS dates(
      id INTEGER PRIMARY KEY,
      date VARCHAR(255),
      UNIQUE(date)
    )
  SQL
  $db.execute(create_table_cmd)

  # add dates to dates table

  date_from  = Date.parse('2016-01-01')
  date_to    = Date.parse('2040-01-01')
  date_range = date_from..date_to
  date_range.each {|date|
    $db.execute("INSERT OR IGNORE INTO dates (date) VALUES ('#{date.to_s}')")
  }

  $db.execute("UPDATE history SET loaded_dates=1 WHERE id=1")
end


# METHODS
# add log method
def add_log(db, date, activity, time, distance, sets, reps, weight)
  day_of_week = calc_day(date)
  date_id = db.execute("SELECT id from dates where date='#{date}'")[0][0]
  db.execute("INSERT INTO logs (day, activity, time, distance, sets, reps, weight, date_id) VALUES ('#{day_of_week}', ?, ?, ?, ?, ?, ?, #{date_id})", [activity, time, distance, sets, reps, weight])
end

# delete log method
def delete_log(db, date, activity="177asdfgsdc7280")
  date_id = db.execute("SELECT id from dates where date=?", [date])[0][0]
  if activity == "177asdfgsdc7280"
    db.execute("DELETE FROM logs WHERE date_id='#{date_id}'")
  else
    db.execute("DELETE FROM logs WHERE date_id='#{date_id}' AND activity=?", [activity])
  end
end

# update log method
def update_log(db, attr_name_to_change, update_value, date, activity)
  date_id = db.execute("SELECT id from dates where date=?", [date])[0][0]

  if attr_name_to_change != "date"
    db.execute("UPDATE logs SET #{attr_name_to_change}=? WHERE date_id='#{date_id}' AND activity=?", [update_value, activity])
  else
    update = db.execute("SELECT id from dates where date='#{update_value}'")[0][0]
    db.execute("UPDATE logs SET date_id='#{update}' WHERE date_id='#{date_id}' AND activity=?", [activity])
  end
end

# print all logs
def print_entire_log(db)
  rows = db.execute2("SELECT d.date, l.day, l.activity, l.time, l.distance, l.sets, l.reps, l.weight FROM dates d LEFT JOIN logs l WHERE l.date_id = d.id")
  rows.each_with_index { |row, index|
    if index==0
      puts "%-12s | %-12s | %-25s | %-10s | %-10s | %-7s | %-7s" % [row [0], row[1], row[2], row[3], row[4], row[5], row[6], row[7]]
      puts "--------------------------------------------------------------------------------------------------------"
    else
      puts "%-12s | %-12s | %-25s | %-10s | %-10s | %-7s | %-7s" % [row [0], row[1], row[2], row[3], row[4], row[5], row[6], row[7]]
    end
  }
end 



# TEST CODE
# add_log($db, Date.today.to_s, "bench press", "N/A", "N/A", 5, 5, 135)
# add_log($db, "2016-06-03", "squat", "N/A", "N/A", 5, 5, 135)
# add_log($db, "2016-06-04", "deadlift", "N/A", "N/A", 5, 5, 135)
# add_log($db, "2016-07-04", "thing", "N/A", "N/A", 5, 5, 135)
# add_log($db, "2016-08-14", "thingy", "N/A", "N/A", 5, 5, 135)
# delete_log($db, "2016-06-03", "squat")
# update_log($db, "distance", "changed", Date.today.to_s, "bench press")
# print_entire_log($db)

# add_log($db, Date.today.to_s, "1", "N/A", "N/A", 5, 5, 135)
# add_log($db, Date.today.to_s, "2", "N/A", "N/A", 5, 5, 135)
# add_log($db, Date.today.to_s, "3", "N/A", "N/A", 5, 5, 135)


