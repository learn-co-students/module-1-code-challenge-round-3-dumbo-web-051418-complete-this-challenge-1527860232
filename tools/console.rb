require_relative '../config/environment'

abby = Student.new("abby")
max = Student.new("max")
eric = Student.new("eric")
tim = Teacher.new("tim")
prince = Teacher.new("prince")
matt = Teacher.new("matt")
history = Course.new("history", abby, tim)
math = Course.new("math",max, prince)
chem = Course.new("chem", eric, matt)

Pry.start
