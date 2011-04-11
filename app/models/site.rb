class Site < ActiveRecord::Base

  def self.up
    create_table :employee do |t|
      t.string :name
      t.timestamps
  end
  
  def self.down
    drop_table :employee
  end
  
end
