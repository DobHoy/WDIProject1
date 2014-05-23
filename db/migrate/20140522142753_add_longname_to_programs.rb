class AddLongnameToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :longname, :string
  end
end
