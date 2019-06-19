
def input_students
#Creating empty array
  students = []
# loop until user hits return twice
  while true do
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    name = gets.chomp
      if name.empty? == true
        break
      else
      end
# ask user which cohort they will be in
      while true do
        puts "Which cohort?"
        months = ["january", "february", "march", "april", "may", "june", "july",
          "august", "septemeber", "october", "november", "december"]
        cohort = gets.chomp.downcase
          if cohort.empty? == true
            cohort = November
            break
          elsif months.include?(cohort)
            break
          else
            puts "That is not a correct cohort"
          end
       end
# ask and assign variable for hobby
    puts "Please enter a hobby"
    hobby = gets.chomp
# ask and assign variable for country of birth
    puts "Please enter a country of birth"
    cob = gets.chomp
#while the name is not empty, repeat this code
    students << {name: name, cohort: cohort.to_sym, hobby: hobby, country: cob}
      if students.count == 1
        puts "Now we have #{students.count} student"
      else
        puts "Now we have #{students.count} students"
      end
    end
  students
end

# puts a student count
def print_header
  puts "The Students of Villains Academy".center(30)
  puts "---------------".center(30)
end

def print(students)
  students.sort_by! do |student| student[:cohort]
  end
  students.each do |student, cohort|
    puts "#{student[:name]} (#{student[:cohort]})"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(20)
end

students = input_students
print_header
print(students)
print_footer(students)
