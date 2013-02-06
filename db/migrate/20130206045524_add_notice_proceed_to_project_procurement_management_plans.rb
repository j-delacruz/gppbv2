class AddNoticeProceedToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :notice_proceed, :datetime
  end
end
