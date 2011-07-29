class Employee
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  validates_presence_of :last_name, :first_name

  attr_accessor :last_name, :first_name, :middle_initial, :ssn, :birth_date, :hire_date, :termination_date, :gross_salary, :employee_401k, :employer_401k

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
