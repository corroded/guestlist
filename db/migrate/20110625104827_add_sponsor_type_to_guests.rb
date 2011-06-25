class AddSponsorTypeToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :sponsor_type, :string
  end

  def self.down
    remove_column :guests, :sponsor_type
  end
end
