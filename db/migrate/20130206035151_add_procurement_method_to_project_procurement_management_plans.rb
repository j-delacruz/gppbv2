class AddProcurementMethodToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :procurement_method, :string
  end
end
