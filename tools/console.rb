require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
bt1 = BoatingTest.new("Don't Crash 101", "pending", puff, spongebob)
bt2 = BoatingTest.new("Power Steering 202", "failed", puff, patrick)
bt3 = BoatingTest.new("Power Steering 201", "passed", krabs, patrick)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
