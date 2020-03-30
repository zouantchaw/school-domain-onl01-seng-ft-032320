class School
  attr_accessor :roster, :student_name, :school_name 
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |h, k| h[k] = [] }  
  end
  def add_student(student_name, grade)
      @roster[grade] << student_name
  end
  def grade(grade)
    @grade=grade
  end 
  def grade (level) 
      @roster.select! {|grade| grade==level}.values.flatten    
  end 
  def sort  #sort by grade
   @roster.each do |grade, names|
     names.sort!
  end
end
end