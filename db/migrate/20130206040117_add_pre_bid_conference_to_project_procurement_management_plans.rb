class AddPreBidConferenceToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :pre_bid_conference, :datetime
  end
end
