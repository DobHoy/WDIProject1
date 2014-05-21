class Booking < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :period_id, :cohort_id, :classroom_id,:period, :cohort, :classroom
  belongs_to :classroom
  belongs_to :period
  belongs_to :cohort
end
