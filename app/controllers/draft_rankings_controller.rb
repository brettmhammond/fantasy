class DraftRankingsController < ApplicationController
  before_action :set_draft_ranking, only: [:show, :edit, :update, :destroy]

  # GET /draft_rankings
  # GET /draft_rankings.json
  def index
    @draft_rankings = DraftRanking.all
  end

  # GET /draft_rankings/1
  # GET /draft_rankings/1.json
  def show
  end

  # GET /draft_rankings/new
  def new
    @draft_ranking = DraftRanking.new
  end

  # GET /draft_rankings/1/edit
  def edit
  end

  # POST /draft_rankings
  # POST /draft_rankings.json
  def create
    @draft_ranking = DraftRanking.new(draft_ranking_params)

    respond_to do |format|
      if @draft_ranking.save
        format.html { redirect_to @draft_ranking, notice: 'Draft ranking was successfully created.' }
        format.json { render :show, status: :created, location: @draft_ranking }
      else
        format.html { render :new }
        format.json { render json: @draft_ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_rankings/1
  # PATCH/PUT /draft_rankings/1.json
  def update
    respond_to do |format|
      if @draft_ranking.update(draft_ranking_params)
        format.html { redirect_to @draft_ranking, notice: 'Draft ranking was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft_ranking }
      else
        format.html { render :edit }
        format.json { render json: @draft_ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_rankings/1
  # DELETE /draft_rankings/1.json
  def destroy
    @draft_ranking.destroy
    respond_to do |format|
      format.html { redirect_to draft_rankings_url, notice: 'Draft ranking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_ranking
      @draft_ranking = DraftRanking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_ranking_params
      params.require(:draft_ranking).permit(:player_id, :year, :ffn_rank, :position_rank, :overall_rank)
    end
end
