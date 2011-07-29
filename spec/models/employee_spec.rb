require 'spec_helper'

describe Employee do
  before(:each) do
    @employee = stub_model(Employee,
                           :ssn => 123456789,
                           :first_name => 'Joe',
                           :last_name => 'Test',
                           :middle_intial => 'Q',
                           :birth_date => '1980-01-01',
                           :hire_date => '2005-01-01',
                           :termination_date => '',
                           :gross_salary => 3000,
                           :employee_401k => 100,
                           :employer_401k => 200).as_new_record
  end

  it "is not valid if the ssn is blank"
  it "is not valid if the ssn has less than 9 digits"
  
  it "is not valid if the ssn has more than 9 digits" do
    @employee.ssn = 1234567890
    @employee.should be_invalid
  end

  it "is valid if the ssn has 9 digits"

  it "is not valid if the first name is blank"
  it "is not valid if the last name is blank"
  it "is not valid if the last name contains numbers" do
    @employee.last_name = 'isnumber1'
    @employee.should be_invalid
  end

  it "is not valid if the first name contains numbers" do
    @employee.first_name = 'Joe2'
    @employee.should be_invalid
  end

  it "is not valid if the middle initial is longer than one character"

  it "is valid if the middle initial is blank" do
    @employee.middle_initial = ''
    @employee.should be_valid
  end

  it "is invalid if the birth date is before the hire date"
  it "is valid if the birth date is after the hire date"
  it "is invalid if the birth date is before the termination date"
  it "is valid if the birth date is after the termination date"

  it "is invalid if the gross salary is negative"
  it "is invalid if the employee 401k is negative"
  it "is invalid if the employer 401k is negative"
  it "is valid if the gross salary is not negative"
  it "is valid if the employee 401k is not negative"
  it "is valid if the employer 401k is not negative"
  
  it "is not valid if the termination date is before the hire date"
  it "is valid if the termination date is after the hire date"
  it "is valid if the termination date is not set"

  
  # it "is not valid without a confirmation number" do
  #   @person.confirmation_number = nil
  #   @person.should be_invalid
  # end
  
  # it "is not valid without a first name" do
  #   @person.first_name = nil
  #   @person.should be_invalid    
  # end
  
  # it "is not valid without a last name" do
  #   @person.last_name = nil
  #   @person.should be_invalid    
  # end
  
  # it "is not valid with a gender set to anything other than 'M' or 'F'" do
  #   @person.gender = 'foo'
  #   @person.should be_invalid
  # end
  
  # it "is valid with gender set to 'M'" do
  #   @person.gender = 'M'
  #   @person.should be_valid
  # end
  
  # it "is valid with gender set to 'F'" do
  #   @person.gender = 'F'
  #   @person.should be_valid
  # end
  
  # it "is valid with nil gender" do
  #   @person.gender = nil
  #   @person.should be_valid
  # end
  
  # it "is not valid with graduation year set to a non-integer" do
  #   @person.graduation_year = 'foo'
  #   @person.should be_invalid
  # end
  
  # it "is not valid with graduation year with other than four digits" do
  #   @person.graduation_year = 10000
  #   @person.should be_invalid
  # end
  
  # it "is valid with nil graduation year" do
  #   @person.graduation_year = nil
  #   @person.should be_valid
  # end
  
end
