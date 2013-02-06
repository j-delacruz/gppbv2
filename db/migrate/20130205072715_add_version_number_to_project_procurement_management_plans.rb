class AddVersionNumberToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :version_num, :integer
  end
end
