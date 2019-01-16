class Employee
  attr_accessor :name, :title, :salary, :boss, :employees
  def initialize(name,salary,title,boss, employees=[])
    @name, @salary, @title, @boss, @employees = name, salary, title, boss, employees
  end

  def bonus(multiplier)
    salary * multiplier
  end
  
end

class Manager < Employee 

   def bonus(multiplier)
    sal = []
  #  (employees.map {|el| el.salary}.reduce(:+)) * multiplier
   self.employees.each do |el|
    if el.is_a?(Manager)
      sal << el.salary
      sal += el.all_employees
    end
  end
  sal.reduce(:+) * multiplier
   end
   def all_employees
    salaries = []
    self.each do |el|
      salaries << el.salary
    end 

   end

end

 s = Employee.new("Shawana", 12000,"TA","Darren")
 s1 = Employee.new("David", 10000,"TA","Darren")
manager = Manager.new("Darren", 78000,"TA_manager","Ned", [s,s1])
founder = Manager.new("Ned", 1_000_000,"founder",nil, [manager])
#  manager.bonus(4)
#  s1.bonus(3)
founder.bonus(5)
manager.bonus(4)
s1.bonus(3)
