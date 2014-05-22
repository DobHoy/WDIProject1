class Cohort < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :course_id, :course, :iteration

  has_many :teaching_assignments
  has_many :instructors, through: :teaching_assignments

  belongs_to :course
  
  has_many :bookings

  has_many :enrollments
  has_many :students, through: :enrollments

end
