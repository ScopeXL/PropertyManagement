class RepairRequest < ActiveRecord::Base
  attr_accessible :close_date, :open_date, :request_details, :request_response, :responder_id, :submitter_id
  
  belongs_to :submitter, :class_name => 'User', :foreign_key => 'submitter_id'
  belongs_to :responder, :class_name => 'User', :foreign_key => 'responder_id'
end
