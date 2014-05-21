class AddUserIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :producer_id, :integer
  end
end
