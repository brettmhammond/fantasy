require 'test_helper'

class AuctionValuesControllerTest < ActionController::TestCase
  setup do
    @auction_value = auction_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auction_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auction_value" do
    assert_difference('AuctionValue.count') do
      post :create, auction_value: { avg_price: @auction_value.avg_price, max_price: @auction_value.max_price, min_price: @auction_value.min_price, player_id: @auction_value.player_id, year: @auction_value.year }
    end

    assert_redirected_to auction_value_path(assigns(:auction_value))
  end

  test "should show auction_value" do
    get :show, id: @auction_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auction_value
    assert_response :success
  end

  test "should update auction_value" do
    patch :update, id: @auction_value, auction_value: { avg_price: @auction_value.avg_price, max_price: @auction_value.max_price, min_price: @auction_value.min_price, player_id: @auction_value.player_id, year: @auction_value.year }
    assert_redirected_to auction_value_path(assigns(:auction_value))
  end

  test "should destroy auction_value" do
    assert_difference('AuctionValue.count', -1) do
      delete :destroy, id: @auction_value
    end

    assert_redirected_to auction_values_path
  end
end
