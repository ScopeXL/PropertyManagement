class User < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :password_salt, :persistence_token, :username
  
  has_many_and_belongs_to_many :roles
  belongs_to :lease
  has_many :submittedreports, :class_name => 'RepairRequest'
  has_many :approvedreports, :class_name => 'RepairRequest'
end
