class ProjectProcurementManagementPlan < ActiveRecord::Base
  attr_accessible :agency_id, :name, :user_id, :projects_attributes
  belongs_to :agency
  belongs_to :user
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects, :reject_if => lambda { |a| a[:code].blank? }
end
