class AddBidEvaluationToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :bid_evaluation, :datetime
  end
end
