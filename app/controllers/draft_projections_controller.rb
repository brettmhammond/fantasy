class DraftProjectionsController < ApplicationController
  before_action :set_draft_projection, only: [:show, :edit, :update, :destroy]

  # GET /draft_projections
  # GET /draft_projections.json
  def index
    @draft_projections = DraftProjection.all
  end

  # GET /draft_projections/1
  # GET /draft_projections/1.json
  def show
  end

  # GET /draft_projections/new
  def new
    @draft_projection = DraftProjection.new
  end

  # GET /draft_projections/1/edit
  def edit
  end

  # POST /draft_projections
  # POST /draft_projections.json
  def create
    @draft_projection = DraftProjection.new(draft_projection_params)

    respond_to do |format|
      if @draft_projection.save
        format.html { redirect_to @draft_projection, notice: 'Draft projection was successfully created.' }
        format.json { render :show, status: :created, location: @draft_projection }
      else
        format.html { render :new }
        format.json { render json: @draft_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_projections/1
  # PATCH/PUT /draft_projections/1.json
  def update
    respond_to do |format|
      if @draft_projection.update(draft_projection_params)
        format.html { redirect_to @draft_projection, notice: 'Draft projection was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft_projection }
      else
        format.html { render :edit }
        format.json { render json: @draft_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_projections/1
  # DELETE /draft_projections/1.json
  def destroy
    @draft_projection.destroy
    respond_to do |format|
      format.html { redirect_to draft_projections_url, notice: 'Draft projection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_projection
      @draft_projection = DraftProjection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_projection_params
      params.require(:draft_projection).permit(:player_id, :year, :completions, :attempts, :passing_yards, :passing_td, :passing, :rush_yards, :rush_td, :fantasy_points)
    end
end
