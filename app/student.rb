# - `Student#name`
#   - Returns the `name` of this student as a string
# - `Student#enroll(subject, teacher)`
#   - This method will take in a `subject` as a string and a `teacher` as a `Teacher` instance. It should create a new `Course` and return it.
# - `Student#courses`
#   - Returns an array of `Course` instances that student is enrolled in
# - `Student#teachers`
#   - Returns an array of `Teacher` instances that the student learns from
# - `Student.all`
#   - Returns an array of `Student` instances
# - `Student.find_by_subject(subject)`
#   - Given `subject` as a string, return an array of `Student` instances that are enrolled in a course with that `subject`

#why does a student want to return a list of students enrolled in a course?

class Student
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def name
    #returns the name of this instance of student as a string
    @name #the instance of name
  end

  def enroll(subject, teacher)
    Course.new(subject,self,teacher)
  end

  def courses
    #as a student I want to see all the courses I am enrolled in
    #look through all courses
    #find the course that has my name in it.
    Course.all.select {|course| course.student == self} #selecting all course instances that self is taking
  end

  def teachers
    #we know our teachers through our courses
    #we need to look at all of our courses to find all of our teachers
    courses.map {|course| course.teacher}
  end

  def self.find_by_subject(subject)
    #This method will return all the students enrolled in this subject

  end


end
