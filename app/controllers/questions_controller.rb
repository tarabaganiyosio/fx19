class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
    @question = Question.new
  end
  
  def show
    @question = Question.find(params[:id])
    @answers  = @question.answers.includes(:user).all
    @answer   = @question.answers.build(user_id: current_user.id) if current_user
    @bas      = @question.bas.includes(:user).all
    @ba       = @question.bas.build(user_id: current_user.id) if current_user
    @replies  = @question.replies.includes(:user).all
    @reply    = @question.replies.build(user_id: current_user.id) if current_user
  end
  
  def create
    @question = Question.new(params_question)
    if @question.save
        redirect_to question_url(@question)
    else
        render "new"
    end
  end                                                                                                                        
  
  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.new
    @question = Question.find(params[:id])
    if @question.update_attributes(params_question)
      redirect_to @question
    else
      render 'edit'
    end
  end
  
  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: '質問を削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def params_question
      params.require(:question).permit(:title, :body, :username, :comments_count, :answers_count)
    end
end
