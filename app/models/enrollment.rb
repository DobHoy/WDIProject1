class Enrollment < ActiveRecord::Base
  attr_accessible :enrollment_date, :has_paid, :prework_done, :student, :student_id, :cohort, :cohort_id

  belongs_to :student, class_name: "User", foreign_key: :student_id
  belongs_to :cohort  
end
