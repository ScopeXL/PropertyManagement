class CreateRepairRequests < ActiveRecord::Migration
  def change
    create_table :repair_requests do |t|
      t.date :open_date
      t.date :close_date
      t.text :request_details
      t.text :request_response
      t.integer :submitter_id
      t.integer :responder_id

      t.timestamps
    end
  end
end
