# A `Course` is initialized with a `subject` as a string, a `student` as a `Student` instance, and a `teacher` as a `Teacher` instance.
#
#   - `Course#subject`
#     - Returns the `subject` of this course as a string
#   - `Course#student`
#     - Returns the `student` in this course as a `Student` instance #max is taking the math course
#   - `Course#teacher`
#     - Returns the `teacher` in this course as a `Teacher` instance #prince is teaching the math course
#   - `Course.all`
#     - Returns an array of `Course` instances

#good on this
class Course

  @@all = []

  attr_accessor :student, :teacher

  def initialize(subject,student,teacher)
    @subject = subject
    @student = student
    @teacher = teacher
    @@all << self
  end

  def self.all
    @@all #returns the array of all course instances
  end

  def subject #getter😎
    @subject
  end


end
