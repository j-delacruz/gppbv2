class AddSubmissionBidsToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :submission_bids, :datetime
  end
end
