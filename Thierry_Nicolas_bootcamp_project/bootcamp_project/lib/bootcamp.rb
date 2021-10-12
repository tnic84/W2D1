class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h, k| h[k] = [] }
    end

    def name 
        @name
    end

    def slogan 
        @slogan
    end

    def teachers 
        @teachers
    end
  
    def students
        @students
    end

    def hire(teacher)
        @teachers.push(teacher)
    end

    def enroll(student)
       if @students.length < @student_capacity
        @students << student
        return true
       end 
       return false
    end

    def enrolled?(student)
        if @students.include?(student)
            return true 
        else 
            return false
        end 
    end 

    def student_to_teacher_ratio
      @students.length / @teachers.length
    end 

    def add_grade(string, num)
        if enrolled?(string)
            @grades[string] << num
            return true 
        end 
        false
    end

    def num_grades(str)
       return @grades[str].length
    end 
  
    def average_grade(stu)
        if enrolled?(stu)  && num_grades(stu) > 0
            grades = @grades[stu]
            sum = 0
            grades.each {|grade| sum += grade}
            sum / grades.length
        else 
            return nil
        end 
    end 
end

