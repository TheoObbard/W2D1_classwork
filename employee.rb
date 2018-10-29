class Employee
  
  attr_reader :salary
  
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
  
  def bonus(multiplier)
    @bonus = @salary * multiplier
  end
end

class Manager < Employee
  attr_reader :employees
  
  def initialize(name, title, salary, boss, employees)
    @employees = employees
    super(name, title, salary, boss)
  end
  
  def bonus(multiplier)
    @bonus = 0
    @employees.each do |emp|
      @bonus += emp.salary
    end
    @bonus *= multiplier
  end
end

bob = Employee.new('bob', 'worker', 50000, 'Theo')
theo = Manager.new('Theo', 'boss', 100000, 'Rikey', [bob])
p theo.bonus(5)