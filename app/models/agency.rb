class Agency < ActiveRecord::Base
  attr_accessible :name, :security_code
  belongs_to :user
end
