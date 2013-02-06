class AddProjectCostAbcToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :project_cost_abc, :float
  end
end
