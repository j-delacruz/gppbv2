class AddPmoEndUserToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :Pmo_End_User, :string
  end
end
