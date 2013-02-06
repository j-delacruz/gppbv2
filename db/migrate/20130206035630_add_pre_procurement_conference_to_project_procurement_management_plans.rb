class AddPreProcurementConferenceToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :pre_procurement_conference, :datetime
  end
end
