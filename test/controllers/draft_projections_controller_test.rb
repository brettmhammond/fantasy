require 'test_helper'

class DraftProjectionsControllerTest < ActionController::TestCase
  setup do
    @draft_projection = draft_projections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:draft_projections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create draft_projection" do
    assert_difference('DraftProjection.count') do
      post :create, draft_projection: { attempts: @draft_projection.attempts, completions: @draft_projection.completions, fantasy_points: @draft_projection.fantasy_points, passing: @draft_projection.passing, passing_td: @draft_projection.passing_td, passing_yards: @draft_projection.passing_yards, player_id: @draft_projection.player_id, rush_td: @draft_projection.rush_td, rush_yards: @draft_projection.rush_yards, year: @draft_projection.year }
    end

    assert_redirected_to draft_projection_path(assigns(:draft_projection))
  end

  test "should show draft_projection" do
    get :show, id: @draft_projection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @draft_projection
    assert_response :success
  end

  test "should update draft_projection" do
    patch :update, id: @draft_projection, draft_projection: { attempts: @draft_projection.attempts, completions: @draft_projection.completions, fantasy_points: @draft_projection.fantasy_points, passing: @draft_projection.passing, passing_td: @draft_projection.passing_td, passing_yards: @draft_projection.passing_yards, player_id: @draft_projection.player_id, rush_td: @draft_projection.rush_td, rush_yards: @draft_projection.rush_yards, year: @draft_projection.year }
    assert_redirected_to draft_projection_path(assigns(:draft_projection))
  end

  test "should destroy draft_projection" do
    assert_difference('DraftProjection.count', -1) do
      delete :destroy, id: @draft_projection
    end

    assert_redirected_to draft_projections_path
  end
end
