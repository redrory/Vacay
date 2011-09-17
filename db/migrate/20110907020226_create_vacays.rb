class CreateVacays < ActiveRecord::Migration
  def self.up
    create_table :vacays do |t|
      t.integer :brought_forward
      t.date :dateFrom
      t.date :dateUntil
      t.integer :user_id
      t.integer :employee_id
      t.integer :sumVacay

      t.timestamps
    end
  end

  def self.down
    drop_table :vacays
  end
end
