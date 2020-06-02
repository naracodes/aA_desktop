
class Employee
    attr_reader :salary, :boss
    def initialize(name, salary, title, boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        add_members(boss)
    end

    def add_members(boss)
        until boss.nil?
            boss.team << self
            boss = boss.boss
        end
    end

    def bonus(multiplier)
        @salary * multiplier
    en

end


class Manager < Employee
    attr_accessor :team

    def initialize(name, salary, title, boss=nil)
        super
        @team = []
    end

    def bonus(multiplier)
        team.map(&:salary).inject(:+) * multiplier   # .length - > .map(&:length) .salary -> .map(&:salary)
    end
end


ned = Manager.new("Ned", 1000000, "Founder")
darren = Manager.new("Darren", 78000, "TA Manager", ned)
shawna = Employee.new("Shawna", 12000, "TA", darren)
david = Employee.new("David", 10000, "TA", darren)


# david = Employee.new("David", 10000, "TA", darren)



p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000

# arr = [a, b, c]

# new_arr = arr.map(&:salary)
# p new_arr

