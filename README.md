# Object Relations Code Challenge

For this assignment, we'll be building out a classroom management system for Flatiron School! We have three models -- `Student`, `Course`, `Teacher`. A `Student` has many `Courses` and `Teacher` has many `Courses`. A `Course` belongs to a `Teacher` and a `Student`.

**Be sure to sketch out your domain and think about the single source of truth.**

## Objective
Your goal is to build out all the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods, such as `map`, `select`, and `find` when appropriate in place of `each`.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

**To Submit** -- Once you've completed all the deliverables, please be sure to commit all of your code and open a Pull Request. Then copy the newly-created Pull Request Link into the Assignment's Submission field.

## Deliverables

### Student
A `Student` is initialized with a `name` as a string.

  - `Student#name`
    - Returns the `name` of this student as a string
  - `Student#enroll(subject, teacher)`
    - This method will take in a `subject` as a string and a `teacher` as a `Teacher` instance. It should create a new `Course` and return it.
  - `Student#courses`
    - Returns an array of `Course` instances that student is enrolled in
  - `Student#teachers`
    - Returns an array of `Teacher` instances that the student learns from
  - `Student.all`
    - Returns an array of `Student` instances
  - `Student.find_by_subject(subject)`
    - Given `subject` as a string, return an array of `Student` instances that are enrolled in a course with that `subject`


### Course
A `Course` is initialized with a `subject` as a string, a `student` as a `Student` instance, and a `teacher` as a `Teacher` instance.

  - `Course#subject`
    - Returns the `subject` of this course as a string
  - `Course#student`
    - Returns the `student` in this course as a `Student` instance
  - `Course#teacher`
    - Returns the `teacher` in this course as a `Teacher` instance
  - `Course.all`
    - Returns an array of `Course` instances

### Teacher
A `Teacher` is initialized with a `name` as a string.

  - `Teacher#name`
    - Returns the `name` of this teacher as a string
  - `Teacher#courses`
    - Returns an array of `Course` instances that the teacher teaches
  - `Teacher#students`
    - Returns an array of `Student` instances that the teacher teaches
  - `Teacher.all`
    - Returns an array of `Teacher` instances
  - `Teacher.roster`
    - Returns an array of `Teacher` instances sorted alphabetically by each `Teacher` instance's name
