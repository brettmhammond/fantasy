class AuctionValuesController < ApplicationController
  before_action :set_auction_value, only: [:show, :edit, :update, :destroy]

  # GET /auction_values
  # GET /auction_values.json
  def index
    @auction_values = AuctionValue.all
  end

  # GET /auction_values/1
  # GET /auction_values/1.json
  def show
  end

  # GET /auction_values/new
  def new
    @auction_value = AuctionValue.new
  end

  # GET /auction_values/1/edit
  def edit
  end

  # POST /auction_values
  # POST /auction_values.json
  def create
    @auction_value = AuctionValue.new(auction_value_params)

    respond_to do |format|
      if @auction_value.save
        format.html { redirect_to @auction_value, notice: 'Auction value was successfully created.' }
        format.json { render :show, status: :created, location: @auction_value }
      else
        format.html { render :new }
        format.json { render json: @auction_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auction_values/1
  # PATCH/PUT /auction_values/1.json
  def update
    respond_to do |format|
      if @auction_value.update(auction_value_params)
        format.html { redirect_to @auction_value, notice: 'Auction value was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction_value }
      else
        format.html { render :edit }
        format.json { render json: @auction_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auction_values/1
  # DELETE /auction_values/1.json
  def destroy
    @auction_value.destroy
    respond_to do |format|
      format.html { redirect_to auction_values_url, notice: 'Auction value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction_value
      @auction_value = AuctionValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auction_value_params
      params.require(:auction_value).permit(:player_id, :year, :min_price, :max_price, :avg_price)
    end
end
