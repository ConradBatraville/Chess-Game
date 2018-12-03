class Employee 
  attr_accessor :name, :salary, :title, :boss

  def initialize(name, salary, title, boss) 
    @name = name 
    @salary = salary
    @title = title
    @boss = boss
  end 

  def bonus(multiplier)
    bonus = (@salary) * multiplier
  end
end 


class Manager < Employee
  attr_accessor :underlings

  def initialize(name, salary, title, boss) 
    @underlings = []
    super
  end

  def bonus(multiplier)
    bonus = (total salary of all sub-employees) * multiplier
  end

  def add_underling

  end

end

ned = Manager.new("Ned", 1,000,000, "Founder", nil)