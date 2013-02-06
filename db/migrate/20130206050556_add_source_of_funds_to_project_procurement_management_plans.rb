class AddSourceOfFundsToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :source_of_funds, :string
  end
end
