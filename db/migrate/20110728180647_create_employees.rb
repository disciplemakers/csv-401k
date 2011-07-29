class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.integer :ssn
      t.date :birth_date
      t.date :hire_date
      t.date :termination_date
      t.decimal :gross_salary
      t.decimal :employee_401k
      t.decimal :employer_401k

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
