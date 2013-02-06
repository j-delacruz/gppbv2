class AddAcceptanceTurnOverToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :acceptance, :datetime
  end
end
