class AddSentSaveTheDateToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :sent_std, :boolean, :default => false
  end

  def self.down
    remove_column :guests, :sent_std
  end
end
