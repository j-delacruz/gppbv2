class AddPeriodCoveredToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :ppmp_period_covered_start, :datetime
    add_column :project_procurement_management_plans, :ppmp_period_covered_end, :datetime
  end
end
