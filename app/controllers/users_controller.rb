class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @boards = Board.where(Builder: @user.username)
    @comments = Comment.where(user_id: @user.id)
    @questions = Question.where(username: @user.username)
    @answers = Answer.where(user_id: @user.id)
    @bas = Ba.where(username: @user.username)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def following
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password,:password_confirmation, :profile, :image, :image_cache, :remove_image, :provider, :uid, :username, :avatar, :avatar_cache, :remove_avatar )
  end
end