class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :size
      t.text :facilities
      t.string :name

      t.timestamps
    end
  end
end
