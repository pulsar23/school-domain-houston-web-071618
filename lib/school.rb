class School
  @@roster = {} #key = gradelevel, value = array of student names

  attr_reader :name
  attr_accessor :roster, :student_name, :grade_level

  def initialize(name)
    @name = name
    @@roster = {}
  end


  def roster
    @@roster
  end


  def add_student(student_name, grade_level)
    if @@roster[grade_level] == nil
      @@roster[grade_level] = []
      @@roster[grade_level] << student_name
    else
      @@roster[grade_level] << student_name
    end
  end

  def grade(grade)
    @@roster[grade]
  end

  def sort
    @@roster.each do |key, value|
        value.sort!
    end
  end





end #class School

#school = School.new("X-men High School")
#school.add_student("AC Slater", 9)
#school.add_student("Kelly Kapowski", 10)
#school.add_student("Screech", 11)

#school.roster
