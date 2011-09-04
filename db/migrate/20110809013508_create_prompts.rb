class CreatePrompts < ActiveRecord::Migration
  def self.up
    create_table :prompts do |t|

      t.string :weekPrompt
      t.string :monthPrompt
      t.string :dayPrompt
      t.string :maxVacay
      t.string :maxSick
      t.integer :user_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :prompts
  end
end
