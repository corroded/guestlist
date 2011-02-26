class Guest < ActiveRecord::Base
  attr_accessible :name, :address, :side, :is_adult, :status
  
  has_and_belongs_to_many :group
end
