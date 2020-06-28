# code here!
require 'pry' 

class School
  attr_reader :name, :roster
  
  def initialize(name, roster={})
    @name= name
    @roster= roster
  end
  
  def add_student(student, grade)
    if roster[grade] == nil
      roster[grade] = []
      roster[grade] << student
    else
      roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end
  
  def sort
    #this style alters the original hash
    #roster.each_value do |v|
     #   v.sort!
    #end 
    
    #this returns a new sorted hash
    sorted_hash={}
    roster.each do |k,v|
      sorted_hash[k]=v.sort
    end
    sorted_hash
  end
  
end