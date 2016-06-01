class HomeController < ApplicationController
  
  def index
    @current_user ||= User.find_by(id: session[:user_id])
    @boards = Board.all
    @board = Board.new
    @users = User.all
    @notices = Notice.all
    @questions = Question.all
    @evas = Eva.all
    @bas = Ba.all
  end

  def show
    @bas = Ba.all
  end
  
end
