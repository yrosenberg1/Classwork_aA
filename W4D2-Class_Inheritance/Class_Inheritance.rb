class Employee

     
    attr_reader :name, :title, :salary, :boss, :employees
    attr_writer :boss
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @employees = nil
    end

    
    
    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end


class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss = nil)
        
        super
        @employees =[]
    end

    def add_employees(employee)
         @employees << employee
         employee.boss = self 
    end

    def manager_bonus(multiplier)
        sum = 0 
        @employees.each do |employee|
            if employee.employees.nil?
               sum += employee.salary
            else
             sum += employee.manager_bonus(multiplier)
                sum += employee.salary
            end
        end
        if self.boss.nil?
         sum * multiplier
        else
            sum
        end
    end

    def bonus_multiplier
        manager_bonus(multiplier) * multiplier
    end
#CONS = 5
#CONS = 10

end

alex = Employee.new("alex", "worker", 100, "boss1")
bob =  Employee.new("bob", "worker", 200, "boss1")
cris = Employee.new("cris", "worker", 300, "boss1")
big_boss = Manager.new("big_boss", "boss", 5000)
boss1 = Manager.new("boss1", "miniboss", 1000, big_boss)
