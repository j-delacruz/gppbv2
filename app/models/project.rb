class Project < ActiveRecord::Base
  attr_accessible :code, :mode_of_procurement, :project_procurement_management_plan_id, :remarks, :status
  belongs_to :project_procurement_management_plan
end
