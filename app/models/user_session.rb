#class UserSession < ActiveRecord::Base
#  attr_accessible :password, :username
#end
class UserSession < Authlogic::Session::Base 
  def to_key 
    new_record? ? nil : [ self.send(self.class.primary_key) ] 
  end 
end