class Group < ActiveRecord::Base  
  has_many :memberships, :dependent => :destroy
  has_many :guests, :through => :memberships
  
  def self.show_all(group)
    self.find_by_name(group).guests.collect{ |x| x.name  }
  end
end