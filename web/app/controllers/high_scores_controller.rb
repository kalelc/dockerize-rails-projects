class HighScoresController < ApplicationController
  before_action :set_high_score, only: [:show, :edit, :update, :destroy]

  # GET /high_scores
  # GET /high_scores.json
  def index
    @high_scores = HighScore.all
  end

  # GET /high_scores/1
  # GET /high_scores/1.json
  def show
  end

  # GET /high_scores/new
  def new
    @high_score = HighScore.new
  end

  # GET /high_scores/1/edit
  def edit
  end

  # POST /high_scores
  # POST /high_scores.json
  def create
    @high_score = HighScore.new(high_score_params)

    respond_to do |format|
      if @high_score.save
        format.html { redirect_to @high_score, notice: 'High score was successfully created.' }
        format.json { render :show, status: :created, location: @high_score }
      else
        format.html { render :new }
        format.json { render json: @high_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /high_scores/1
  # PATCH/PUT /high_scores/1.json
  def update
    respond_to do |format|
      if @high_score.update(high_score_params)
        format.html { redirect_to @high_score, notice: 'High score was successfully updated.' }
        format.json { render :show, status: :ok, location: @high_score }
      else
        format.html { render :edit }
        format.json { render json: @high_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /high_scores/1
  # DELETE /high_scores/1.json
  def destroy
    @high_score.destroy
    respond_to do |format|
      format.html { redirect_to high_scores_url, notice: 'High score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high_score
      @high_score = HighScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def high_score_params
      params.require(:high_score).permit(:game, :score)
    end
end
