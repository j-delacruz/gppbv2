class ProjectProcurementManagementPlan < ActiveRecord::Base
  attr_accessible :agency_id, :name, :user_id
  belongs_to :agency
  belongs_to :user
end
