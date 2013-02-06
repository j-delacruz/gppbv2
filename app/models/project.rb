class Project < ActiveRecord::Base
  attr_accessible :code, :mode_of_procurement, :project_procurement_management_plan_id, :remarks, :status, :pmo_end_user,
  :procurement_method, :project_cost, :pre_procurement_conference, :ads_post_iaeb, :pre_bid_conference, :submission_bids,
  :bid_evaluation, :post_quali_evaluation, :notice_proceed, :award_contract, :delivery_completion, :acceptance, :source_of_funds, :estimate_budget_mode,
  :estimate_budget_co, :contract_cost, :estimate_budget_total, :estimate_budget_co, :contract_cost

  belongs_to :project_procurement_management_plan
end
