class Agency < ActiveRecord::Base
  attr_accessible :name, :security_code
  has_many :users
  has_many :project_procurement_management_plans
end
