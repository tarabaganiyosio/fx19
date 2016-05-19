class BoardsController < ApplicationController
  
  def index
    @boards = Board.all
    @board = Board.new
  end
  
  def show
    @board = Board.find(params[:id])
    @comments = @board.comments.includes(:user).all
    @comment  = @board.comments.build(user_id: current_user.id) if current_user
  end

  def new
  end

  def create
    @board = Board.new(params_board)
    if @board.save
        redirect_to board_url(@board)
    else
        render "new"
    end
  end
  
  private
    
  def params_board
    params.require(:board).permit(:title, :outset, :Builder )
  end
end
