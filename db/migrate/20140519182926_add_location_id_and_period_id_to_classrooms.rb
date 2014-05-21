class AddLocationIdAndPeriodIdToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :location_id, :integer
    add_column :classrooms, :period_id, :integer
  end
end
