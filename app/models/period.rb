class Period < ActiveRecord::Base
  attr_accessible :slot
  has_many :classrooms
  has_many :bookings
  
end
