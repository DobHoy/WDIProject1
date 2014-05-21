class AddCohortIdToTeachingAssignments < ActiveRecord::Migration
  def change
    add_column :teaching_assignments, :cohort_id, :integer
  end
end
