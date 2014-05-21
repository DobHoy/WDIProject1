class Classroom < ActiveRecord::Base
  attr_accessible :facilities, :name, :size, :location_id, :period_id, :location, :period
  belongs_to :location
  belongs_to :period
  has_many :bookings
end
