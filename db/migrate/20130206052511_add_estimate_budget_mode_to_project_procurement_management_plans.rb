class AddEstimateBudgetModeToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :estimate_budget_mode, :string
  end
end
