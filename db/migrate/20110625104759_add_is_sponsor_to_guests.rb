class AddIsSponsorToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :is_sponsor, :boolean, :default => false
  end

  def self.down
    remove_column :guests, :is_sponsor
  end
end
