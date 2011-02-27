class Membership < ActiveRecord::Base
  belongs_to :guest
  belongs_to :group
end
