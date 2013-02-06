class AddDeliveryCompletiontoToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :delivery_completion, :datetime
  end
end
