require 'test_helper'

class DraftRankingsControllerTest < ActionController::TestCase
  setup do
    @draft_ranking = draft_rankings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:draft_rankings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create draft_ranking" do
    assert_difference('DraftRanking.count') do
      post :create, draft_ranking: { ffn_rank: @draft_ranking.ffn_rank, overall_rank: @draft_ranking.overall_rank, player_id: @draft_ranking.player_id, position_rank: @draft_ranking.position_rank, year: @draft_ranking.year }
    end

    assert_redirected_to draft_ranking_path(assigns(:draft_ranking))
  end

  test "should show draft_ranking" do
    get :show, id: @draft_ranking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @draft_ranking
    assert_response :success
  end

  test "should update draft_ranking" do
    patch :update, id: @draft_ranking, draft_ranking: { ffn_rank: @draft_ranking.ffn_rank, overall_rank: @draft_ranking.overall_rank, player_id: @draft_ranking.player_id, position_rank: @draft_ranking.position_rank, year: @draft_ranking.year }
    assert_redirected_to draft_ranking_path(assigns(:draft_ranking))
  end

  test "should destroy draft_ranking" do
    assert_difference('DraftRanking.count', -1) do
      delete :destroy, id: @draft_ranking
    end

    assert_redirected_to draft_rankings_path
  end
end
