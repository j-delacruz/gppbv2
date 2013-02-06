class AddContractCostToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :contract_cost, :float
  end
end
