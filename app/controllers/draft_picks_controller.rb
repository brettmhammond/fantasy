class DraftPicksController < ApplicationController
  before_action :set_draft_pick, only: [:show, :edit, :update, :destroy]

  # GET /draft_picks
  # GET /draft_picks.json
  def index
    @draft_picks = DraftPick.all.where(draft_id: params[:draft_id])
    @draft = Draft.find(params[:draft_id])
  end

  # GET /draft_picks/1
  # GET /draft_picks/1.json
  def show
  end

  # GET /draft_picks/new
  def new
    @draft = Draft.includes(:league).find(params[:draft_id])

    @draft_picks = DraftPick.all.where(draft_id: params[:draft_id])

    # raise @draft.to_json
    #

    # raise @draft.to_json

    #
    @players = Player.all.order('name').where('id not in (?)', @draft_picks.map(&:player_id)).includes(:position, :team).map { |p| ["#{p.name} (#{p.position.position}) - #{p.team.key} ",p.id]}
    @draft_pick = DraftPick.new

    # raise @players.to_yaml
  end

  # GET /draft_picks/1/edit
  def edit
        @players = Player.all.order('name').includes(:position, :team).map { |p| ["#{p.name} (#{p.position.position}) - #{p.team.key} ",p.id]}

  end

  # POST /draft_picks
  # POST /draft_picks.json
  def create
    # raise draft_pick_params.to_yaml
    # draft_pick_params[:round] = 2
    # raise draft_pick_params[:fantasy_team_id].to_s
    round = DraftPick.where(fantasy_team_id: draft_pick_params[:fantasy_team_id], draft_id: draft_pick_params[:draft_id]).count

    @draft_pick = DraftPick.new(draft_pick_params)
    @draft_pick.round = round + 1
    # raise @draft_pick.to_json
    @draft_pick.save

    redirect_to draft_draft_picks_url(params[:draft_id])

    # respond_to do |format|
    #   if @draft_pick.save
    #     format.html { redirect_to @draft_pick, notice: 'Draft pick was successfully created.' }
    #     format.json { render :show, status: :created, location: @draft_pick }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @draft_pick.errors, status: :unprocessable_entity }
    #   end
    # end
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
      format.html { redirect_to draft_draft_picks_url(params[:draft_id]), notice: 'Draft pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_pick
      @draft_pick = DraftPick.find(params[:id])
      @draft = Draft.find(params[:draft_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_pick_params
      params.require(:draft_pick).permit(:draft_id, :fantasy_team_id, :player_id, :price, :round)
    end
end
