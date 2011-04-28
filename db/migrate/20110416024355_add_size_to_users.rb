class AddSizeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :size, :integer
  end

  def self.down
    remove_column :users, :size
  end
end
