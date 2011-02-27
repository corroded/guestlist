class AddPriorityToGuest < ActiveRecord::Migration
  def self.up
    add_column :guests, :priority, :integer
  end

  def self.down
    remove_column :guests, :priority
  end
end
