class Employee
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
end

class Manager < Employee
  def initialize(employees)
    @employees = employees
    super
  end
end