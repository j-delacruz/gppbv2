class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin, :agency_id, :first_name, :last_name, :username, :agency_code
  # attr_accessible :title, :body
  attr_accessor :agency_code
  has_many :project_procurement_management_plans
  belongs_to :agency
  
  validates :username, uniqueness: true
  validate :validate_agency_code

  def fullname
   "#{first_name} #{last_name}"
  end

    def validate_agency_code
       if agency && agency.security_code != agency_code
          errors.add(:base, "Error message")
       end
    end

 
end
