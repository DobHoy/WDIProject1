class CreateTeachingAssignments < ActiveRecord::Migration
  def change
    create_table :teaching_assignments do |t|
      t.integer :rate
      t.date :assign_date

      t.timestamps
    end
  end
end
