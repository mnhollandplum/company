class Department
    attr_reader :name, :employees
  def initialize(name)
    @name = name
    @employees = []
  end

  def employee_count
    @employees.count
  end

  def add_employee(employee)
    @employees << employee
  end

  def average_salary
    @employees.map do |employee|
      employee.salary
    end.sum/employee_count
  end

end
