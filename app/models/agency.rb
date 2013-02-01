class Agency < ActiveRecord::Base
  attr_accessible :name, :security_code
  has_many :users
end
