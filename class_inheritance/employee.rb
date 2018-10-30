class Employee
  
  attr_reader :salary
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
  
  def bonus(multiplier)
     @salary * multiplier
  end
  
end

class Manager < Employee
  def initialize(name, title, salary, boss)
    @employees = []
    super(name, title, salary, boss)
  end
  
  def add_employee(employee)
    @employees << employee
    
    employee
  end
  
  def bonus(multiplier)
    sum = 0
    
    @employees.each {|employee| sum += employee.salary}
    
    sum * multiplier
  end
end