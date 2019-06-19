
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
# ask and assign varibale for hobby
    puts "Please enter a hobby"
    hobby = gets.chomp
# ask and assign varibale for country of birth
    puts "Please enter a country of birth"
    cob = gets.chomp
  #while the name is not empty, repeat this code
    students << {name: name, cohort: :november, hobby: hobby, country: cob}
    puts "Now we have #{students.count} students"
  end
  students
end

# puts a student count
def print_header
  puts "The Students of Villans Academy"
  puts "---------------"
end

def print(students)
  counter = 0
    while counter < students.size do
      puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort)"
      counter += 1
    end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
