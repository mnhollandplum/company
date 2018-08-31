require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
require './lib/department'

class DepartmentTest < Minitest::Test
  def test_department_exists
    department = Department.new("Accounting")
    assert_instance_of Department, department
  end

  def test_department_has_name
    department = Department.new("Accounting")
    assert_equal "Accounting", department.name
  end

  def test_department_employee_count_starts_at_zero
    department = Department.new("Accounting")
    assert_equal 0, department.employee_count
  end

  def test_department_can_add_employees_and_count_them
    department = Department.new("Accounting")
    employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
    employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})

    department.add_employee(employee_1)

    assert_equal 1, department.employee_count

    department.add_employee(employee_2)

    assert_equal 2, department.employee_count
  end

  def test_department_can_store_employee_information
    department = Department.new("Accounting")
    employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
    employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})

    department.add_employee(employee_1)
    department.add_employee(employee_2)

    assert_equal [employee_1, employee_2], department.employees
  end

  def test_department_can_calculate_employees_average_salary
    department = Department.new("Accounting")
    employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
    employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})

    department.add_employee(employee_1)
    department.add_employee(employee_2)

    assert_equal 75000, department.average_salary
  end

end
