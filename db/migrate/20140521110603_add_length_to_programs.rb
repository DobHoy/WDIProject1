class AddLengthToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :length, :integer
  end
end
