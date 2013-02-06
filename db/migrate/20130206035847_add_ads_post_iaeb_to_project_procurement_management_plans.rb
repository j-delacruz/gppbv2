class AddAdsPostIaebToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :ads_post_iaeb, :datetime
  end
end
