class Course < ActiveRecord::Base
  attr_accessible :iteration, :name, :location_id, :program_id, :producer_id, :location, :program, :producer

  has_many :cohorts
  belongs_to :location
  belongs_to :producer, class_name: "User", foreign_key: :producer_id
  belongs_to :program


end
