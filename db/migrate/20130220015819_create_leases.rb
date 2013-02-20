class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.date :start_date
      t.date :end_date
      t.integer :rent

      t.timestamps
    end
  end
end
