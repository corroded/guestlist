class JoinTableForGuestsAndGroups < ActiveRecord::Migration
  def self.up
    create_table :groups_guests, :id => false do |t|
      t.column :group_id, :integer
      t.column :guest_id, :integer
    end
  end

  def self.down
    drop_table :groups_guests
  end
end
