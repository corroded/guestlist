class AddSentInvitationToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :sent_invitation, :boolean, :default => false
  end

  def self.down
    remove_column :guests, :sent_invitation
  end
end
