class CreateManages < ActiveRecord::Migration
  def self.up
    create_table :manages do |t|
      t.string :name
      t.date :dob
      t.date :doe
      t.integer :vacayAllot
      t.integer :vacayUsed
      t.integer :sickAllot
      t.integer :sickHave

      t.timestamps
    end
  end

  def self.down
    drop_table :manages
  end
end
