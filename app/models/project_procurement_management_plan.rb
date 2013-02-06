class ProjectProcurementManagementPlan < ActiveRecord::Base
  attr_accessible :agency_id, :name, :user_id, :projects_attributes, :year, :version_num, :description,
                  :ppmp_period_covered_start, :ppmp_period_covered_end
  belongs_to :agency
  belongs_to :user
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects, :reject_if => lambda { |a| a[:code].blank? }
  
  def ppmp_form_name
    "#{name} # #{version_num} of #{year}"
  end
  
 
end
