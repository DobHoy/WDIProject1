class AddProgramIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :program_id, :integer
  end
end
