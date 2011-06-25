class Guest < ActiveRecord::Base
  has_many :memberships, :dependent => :destroy
  has_many :groups, :through => :memberships
  
  scope :sponsors, where("is_sponsor IS true")
end
