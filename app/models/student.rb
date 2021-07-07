class Student

    attr_accessor :first_name 

    @@all = [] 

    def initialize(first_name) 
        @first_name = first_name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def add_boating_test(first_name, status, instructor)
        BoatingTest.new(self, first_name, status, instructor)
    end 

    def self.find_student(name)
        self.all.find{|student| student.first_name == name}
        # BoatingTest.all.find{|bt| bt.student.first_name == name }
    end 

    def student_inst
        BoatingTest.all.select{|bt| bt.student == self }
    end 
        
    
    def grade_percentage 
        
        passed_tests = student_inst.select{|bt| bt.status == "passed"}.count
        total_tests = student_inst.map{|bt| bt.name }.count
        student_grade_percentage = passed_tests.to_f / total_tests.to_f
        student_grade_percentage
    end 
    


end
