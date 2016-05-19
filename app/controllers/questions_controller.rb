class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
    @question = Question.new
  end
  
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.includes(:user).all
    @answer  = @question.answers.build(user_id: current_user.id) if current_user
  end

  def new
  end

  def create
    @question = Question.new(params_question)
    if @question.save
        redirect_to question_url(@question)
    else
        render "new"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def params_question
      params.require(:question).permit(:title, :body, :username)
    end
end
