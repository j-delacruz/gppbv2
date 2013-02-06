class AddPostQualiEvaluationToProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    add_column :project_procurement_management_plans, :post_quali_evaluation, :datetime
  end
end
