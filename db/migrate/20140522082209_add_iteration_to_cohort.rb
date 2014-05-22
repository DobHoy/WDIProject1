class AddIterationToCohort < ActiveRecord::Migration
  def change
    add_column :cohorts, :iteration, :integer
  end
end
