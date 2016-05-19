class EvasController < ApplicationController
  before_action :set_eva, only: [:show, :edit, :update, :destroy]

  # GET /evas
  # GET /evas.json
  def index
    @evas = Eva.all
  end

  # GET /evas/1
  # GET /evas/1.json
  def show
  end

  # GET /evas/new
  def new
    @eva = Eva.new
  end

  # GET /evas/1/edit
  def edit
  end

  # POST /evas
  # POST /evas.json
  def create
    @eva = Eva.new(eva_params)

    respond_to do |format|
      if @eva.save
        format.html { redirect_to :back, notice: '✔ 評価が送信されました' }
        format.json { render :show, status: :created, location: @eva }
      else
        format.html { render :new }
        format.json { render json: @eva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evas/1
  # PATCH/PUT /evas/1.json
  def update
    respond_to do |format|
      if @eva.update(eva_params)
        format.html { redirect_to :back, notice: '評価を更新しました' }
        format.json { render :show, status: :ok, location: @eva }
      else
        format.html { render :edit }
        format.json { render json: @eva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evas/1
  # DELETE /evas/1.json
  def destroy
    @eva.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: '評価を削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eva
      @eva = Eva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eva_params
      params.require(:eva).permit(:user_id, :broker_id, :body, :title)
    end
end
