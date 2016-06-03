# USER INTERFACE
require_relative 'gym_log'

# checks if a string is a number
def checkifnumber(string)
  true if Float(string) rescue false
end

loop {
  puts "Enter 'add', 'update', 'delete', 'print', or enter 'q' to end program."
  choice = gets.chomp
  until choice == "add" || choice == "delete" || choice == "update" || choice == "print" || choice == "q"
    puts "Invalid input!"
    puts "Enter 'add', 'update', 'delete', 'print', or enter 'q' to end program."
    choice = gets.chomp
  end
  break if choice == "q"
  case choice

  when "add"
    print_entire_log($db)

    puts "Enter date in YYYY-MM-DD format."
    date = gets.chomp

    while $db.execute("SELECT EXISTS(SELECT id FROM dates WHERE date='#{date}')")[0][0] == 0
      puts "Enter a valid date in YYYY-MM-DD format."
      date = gets.chomp
    end

    puts "Enter activity."
    activity = gets.chomp

    puts "Enter time or press <enter> if not applicable."
    time = gets.chomp
    time = "N/A" if time == ""

    puts "Enter distance or press <enter> if not applicable."
    distance = gets.chomp
    distance = "N/A" if distance == ""

    puts "Enter sets or press <enter> if not applicable."
    sets = gets.chomp
    until checkifnumber(sets)==true || sets == ""
      puts "Enter a valid number of sets or press <enter> if not applicable."
      sets = gets.chomp
    end
    sets = "N/A" if sets == ""

    puts "Enter reps or press <enter> if not applicable."
    reps = gets.chomp
    until checkifnumber(reps)==true || reps == ""
      puts "Enter a valid number of reps or press <enter> if not applicable."
      reps = gets.chomp
    end
    reps = "N/A" if reps == ""

    puts "Enter weight or press <enter> if not applicable."
    weight = gets.chomp
    weight = "N/A" if weight == ""

    add_log($db, date, activity, time, distance, sets, reps, weight)

  when "update"
    print_entire_log($db)

    puts "Enter the date of the row you want to update."
    date = gets.chomp

    puts "Enter the activity of the row you want to update."
    activity = gets.chomp

    puts "Enter the column you want to update."
    attr_name_to_change = gets.chomp

    puts "Enter what you would like to update its value to."
    update_value = gets.chomp

    update_log($db, attr_name_to_change, update_value, date, activity)

  when "delete"
    print_entire_log($db)

    puts "Enter the date of the row you want to delete."
    date = gets.chomp

    puts "Enter the activity of the row you want to delete OR press <enter> to delete all rows with that date."
    activity = gets.chomp

    if activity == ""
      activity = "177asdfgsdc7280"
    end

    delete_log($db, date, activity)

  when "print"
    print_entire_log($db)
  end
  puts "\n"
}






# SELECT EXISTS(SELECT id FROM logs WHERE activity='7' AND time="77")