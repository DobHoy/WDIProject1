class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :slot

      t.timestamps
    end
  end
end
