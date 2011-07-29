require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "ssn must have 9 digits" do
    assert true
  end

  test "last name may not contain numbers"
  test "first name may not contain numbers"
  test "middle initial may not contain numbers"
  test "middle initial may not be longer than one character"
  test "middle initial may be blank"
  test "birth date may not be before hire date"
  test "birth date may not be before termination date"
  test "gross salary may not be negative"
  test "employee 401k may not be negative"
  test "employer 401k may not be negative"
  
end
