
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #Creating empty array
  students = []
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

# puts a student count
def print_header
puts "The Students of Villans Academy"
puts "---------------"
end

def print(students)
  students.each_with_index do |student, index|
    if student[:name].start_with?("B")
     puts "#{index + 1}. #{student[:name]} #{student[:cohort]} cohort"
   else
   end
end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
