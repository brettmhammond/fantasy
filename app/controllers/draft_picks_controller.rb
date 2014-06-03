class DraftPicksController < ApplicationController
  before_action :set_draft_pick, only: [:show, :edit, :update, :destroy]

  # GET /draft_picks
  # GET /draft_picks.json
  def index
    @draft_picks = DraftPick.all
  end

  # GET /draft_picks/1
  # GET /draft_picks/1.json
  def show
  end

  # GET /draft_picks/new
  def new
    @draft = Draft.includes(:league).find(1)


    @draft_picks = DraftPick.all.where('draft_id', @draft.id)

    # raise @draft.league.to_json
    #

    # raise @draft.to_json

    @players = Player.all.where('id not in (?)',@draft_picks.map(&:player_id)).order('name').includes(:position, :team).map { |p| ["#{p.name} (#{p.position.position}) - #{p.team.short_name} ",p.id]}
    @draft_pick = DraftPick.new
  end

  # GET /draft_picks/1/edit
  def edit
  end

  # POST /draft_picks
  # POST /draft_picks.json
  def create
    @draft_pick = DraftPick.new(draft_pick_params)

    respond_to do |format|
      if @draft_pick.save
        format.html { redirect_to @draft_pick, notice: 'Draft pick was successfully created.' }
        format.json { render :show, status: :created, location: @draft_pick }
      else
        format.html { render :new }
        format.json { render json: @draft_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_picks/1
  # PATCH/PUT /draft_picks/1.json
  def update
    respond_to do |format|
      if @draft_pick.update(draft_pick_params)
        format.html { redirect_to @draft_pick, notice: 'Draft pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft_pick }
      else
        format.html { render :edit }
        format.json { render json: @draft_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_picks/1
  # DELETE /draft_picks/1.json
  def destroy
    @draft_pick.destroy
    respond_to do |format|
      format.html { redirect_to draft_picks_url, notice: 'Draft pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_pick
      @draft_pick = DraftPick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_pick_params
      params.require(:draft_pick).permit(:draft_id, :fantasy_team_id, :player_id, :price, :round)
    end
end
