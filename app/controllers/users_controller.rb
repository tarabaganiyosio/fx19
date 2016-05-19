class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:email, :password,:password_confirmation, :profile, :image, :image_cache, :remove_image, :provider, :uid, :username )
  end
end