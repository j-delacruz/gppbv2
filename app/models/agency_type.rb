class AgencyType < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :agencies
end
