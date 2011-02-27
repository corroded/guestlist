class Group < ActiveRecord::Base  
  has_many :memberships, :dependent => :destroy
  has_many :guests, :through => :memberships
  
  def self.find(group)
    self.find_by_name(group).guest.collect{ |x| x.name  }
  end
end