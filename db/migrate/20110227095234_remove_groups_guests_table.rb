class RemoveGroupsGuestsTable < ActiveRecord::Migration
  def self.up
    drop_table :groups_guests
  end

  def self.down
    create_table "groups_guests", :id => false, :force => true do |t|
      t.integer "group_id"
      t.integer "guest_id"
    end
    
  end
end
