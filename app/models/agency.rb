class Agency < ActiveRecord::Base
  attr_accessible :name, :security_code, :agency_type_id
  belongs_to :agency_type
  has_many :users
  has_many :project_procurement_management_plans
end
