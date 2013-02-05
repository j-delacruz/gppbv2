class Admin::UsersController < Admin::BaseController

  def index
  	@users = User.all
  end

   def show
     @user = User.find(params[:id])
   end

   def edit
     @user = User.find(params[:id])
   end

   def update
   	 @user = User.find(params[:id])
   	 @user.update_attributes(params[:user])
   	 redirect_to [:admin, @user]
   end
end
