# code here!
class School
  attr_accessor :name, :roster



  def initialize(name)
    @name = name
    @roster = {}   #student: grade
  end

  def add_student(student_name, grade)
    roster[grade] ||= []                #how does this add >1 student to the class?
    roster[grade] << student_name       #enter hash then key to affect the value (grade) by adding the new student name
  end

  def grade(student_grade)
    roster[student_grade]

  end

  def sort
    sorted = {}     #create array of sorted students (alphabetically)
    roster.each do |grade, students|      #go through (get?) each grade and students
      sorted[grade] = students.sort       #???
    end
    sorted          #return the sorted array
  end

end
