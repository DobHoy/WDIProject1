class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true


  attr_accessible :email, :firstname, :lastname, :role, :password, :password_confirmation, :password_digest

  has_many :enrollments, foreign_key: :student_id
  has_many :cohorts_memberships, through: :enrollments, source: :cohort
    
  has_many :teaching_assignments, foreign_key: :instructor_id
  has_many :taught_cohorts, through: :teaching_assignments, source: :cohort

  has_many :courses, foreign_key: :producer_id

end
