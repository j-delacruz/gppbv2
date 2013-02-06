class AddRemarksToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :remarks, :text
  end
end
