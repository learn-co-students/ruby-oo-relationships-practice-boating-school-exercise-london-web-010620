class Instructor

    attr_accessor :name 

    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def pass_student(student, test_name)
        test = BoatingTest.all.find{|bt| bt.student.first_name == student.first_name && bt.name == test_name}
        if test
            test.status= "passed"
        else
            BoatingTest.new(student, test_name, status = "passed", self)
        end
    end

    def fail_student(student, test_name)
        test = BoatingTest.all.find{|bt| bt.student.first_name == student.first_name && bt.name == test_name}
        if test 
            test.status = "failed"
        else 
            BoatingTest.new(student, test_name, status = "failed", self)
        end

    end 






end
