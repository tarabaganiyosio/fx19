class HomeController < ApplicationController
  
  def index
    @current_user ||= User.find_by(id: session[:user_id])
    @boards = Board.all
    @board = Board.new
    @users = User.all
    @notices = Notice.all
    @questions = Question.all
    @evas = Eva.all
    @fruits = Fruit.all
    @fruit = Fruit.new
  end

  def show
  end
end
