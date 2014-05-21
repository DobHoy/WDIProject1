class TeachingAssignment < ActiveRecord::Base
  attr_accessible :assign_date, :rate, :cohort_id, :instructor_id, :cohort, :instructor
  belongs_to :instructor, class_name: "User", foreign_key: :instructor_id
  belongs_to :cohort
end
