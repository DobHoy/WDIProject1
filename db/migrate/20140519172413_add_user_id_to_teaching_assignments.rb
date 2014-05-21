class AddUserIdToTeachingAssignments < ActiveRecord::Migration
  def change
    add_column :teaching_assignments, :instructor_id, :integer
  end
end
