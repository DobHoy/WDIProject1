class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.boolean :prework_done
      t.boolean :has_paid
      t.date :enrollment_date

      t.timestamps
    end
  end
end
