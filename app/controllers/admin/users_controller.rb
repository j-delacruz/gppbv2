class Admin::UsersController < Admin::BaseController
  def index
  	@users = User.all(:order => "order")
  end
end
