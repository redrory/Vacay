class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :name
      t.date :doe
      t.date :dob
      t.integer :vacayTotal
      t.integer :vacayUsed
      t.integer :sickTotal
      t.integer :sickUsed
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
