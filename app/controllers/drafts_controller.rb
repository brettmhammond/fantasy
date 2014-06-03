require 'nokogiri'
require 'open-uri'

class DraftsController < ApplicationController
  before_action :set_draft, only: [:edit, :update, :destroy]

  # GET /drafts
  # GET /drafts.json
  def index
    @drafts = Draft.all.includes(:league)
  end

  # GET /drafts/1
  # GET /drafts/1.json
  def show






    # doc = Nokogiri::HTML(open("http://fantasydata.com/nfl-stats/nfl-fantasy-football-rankings-adp.aspx"))

    # rows = doc.xpath("//table")

    # rows.each do |row|


    #   row.css('tr')[3].each do |column|
    #       # puts row.css('td')[0].text
    #       puts column.css('td')[1].text
    #       puts column.css('td')[2].text
    #       puts column.css('td')[3].text
    #       puts column.css('td')[4].text
    #       puts column.css('td')[5].text
    #       puts column.css('td')[6].text
    #       puts column.css('td')[7].text
    #       puts column.css('td')[8].text
    #       puts column.css('td')[9].text
    #       puts column.css('td')[10].text
    #       puts column.css('td')[11].text
    #       puts column.css('td')[12].text
    #       puts column.css('td')[13].text
    #       puts column.css('td')[14].text



    #   end



    # end




    # raise rows.to_json
    # doc.search('table#StatsGrid > tr').each do |row|
    #     row.search('td/font/text()').each do |col|
    #       puts col.to_s
    #     end
    # end

    # raise doc.to_json

    # rows.each do |row|
    #     position = Position.find_by_position(row.css('td')[1].text)
    #     team     = Team.find_by_name(row.css('td')[2].text)

    #     Player.create(name: row.css('td')[0].text, position_id: position.id, team_id: team.id)
    # end



    @players = Player.all.order('name').includes(:position, :team)
    @draft = Draft.includes(:league, :draft_picks).find(params[:id])


  end

  # GET /drafts/new
  def new
    @draft = Draft.new
  end

  # GET /drafts/1/edit
  def edit
  end

  # POST /drafts
  # POST /drafts.json
  def create
    @draft = Draft.new(draft_params)

    respond_to do |format|
      if @draft.save
        format.html { redirect_to @draft, notice: 'Draft was successfully created.' }
        format.json { render :show, status: :created, location: @draft }
      else
        format.html { render :new }
        format.json { render json: @draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drafts/1
  # PATCH/PUT /drafts/1.json
  def update
    respond_to do |format|
      if @draft.update(draft_params)
        format.html { redirect_to @draft, notice: 'Draft was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft }
      else
        format.html { render :edit }
        format.json { render json: @draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drafts/1
  # DELETE /drafts/1.json
  def destroy
    @draft.destroy
    respond_to do |format|
      format.html { redirect_to drafts_url, notice: 'Draft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft
      @draft = Draft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_params
      params.require(:draft).permit(:league_id)
    end
end
