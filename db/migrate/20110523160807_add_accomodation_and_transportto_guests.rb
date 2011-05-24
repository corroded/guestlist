class AddAccomodationAndTransporttoGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :accomodation, :boolean, :default => false
    add_column :guests, :transportation, :boolean, :default => false
  end

  def self.down
    remove_column :guests, :transportation
    remove_column :guests, :accomodation
  end
end
