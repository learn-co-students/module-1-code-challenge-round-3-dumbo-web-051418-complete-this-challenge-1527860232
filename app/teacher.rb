# A `Teacher` is initialized with a `name` as a string.
#
#   - `Teacher#name`
#     - Returns the `name` of this teacher as a string
#   - `Teacher#courses`
#     - Returns an array of `Course` instances that the teacher teaches
#   - `Teacher#students`
#     - Returns an array of `Student` instances that the teacher teaches
#   - `Teacher.all`
#     - Returns an array of `Teacher` instances
#   - `Teacher.roster`
#     - Returns an array of `Teacher` instances sorted alphabetically by each `Teacher` instance's name


class Teacher
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.roster
    #returns an array of teacher instances
    #iterate through all teachers
    #sort teachers alphabetically


  end

  def name
    @name
  end

  def courses
    #returns all the courses the teacher is teaching.
    #we know all our courses from course
    Course.all.select {|course| course.teacher == self}
  end

  def students
    courses.map {|course| course.student}
  end

end
