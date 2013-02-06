class AddEstimateBudgetCoToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :estimate_budget_co, :string
  end
end
