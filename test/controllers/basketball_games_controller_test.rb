require 'test_helper'

class BasketballGamesControllerTest < ActionController::TestCase
  setup do
    @basketball_game = basketball_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basketball_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basketball_game" do
    assert_difference('BasketballGame.count') do
      post :create, basketball_game: { assists: @basketball_game.assists, end_time: @basketball_game.end_time, notes: @basketball_game.notes, start_time: @basketball_game.start_time, three_pointers: @basketball_game.three_pointers, two_pointers: @basketball_game.two_pointers }
    end

    assert_redirected_to basketball_game_path(assigns(:basketball_game))
  end

  test "should show basketball_game" do
    get :show, id: @basketball_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basketball_game
    assert_response :success
  end

  test "should update basketball_game" do
    patch :update, id: @basketball_game, basketball_game: { assists: @basketball_game.assists, end_time: @basketball_game.end_time, notes: @basketball_game.notes, start_time: @basketball_game.start_time, three_pointers: @basketball_game.three_pointers, two_pointers: @basketball_game.two_pointers }
    assert_redirected_to basketball_game_path(assigns(:basketball_game))
  end

  test "should destroy basketball_game" do
    assert_difference('BasketballGame.count', -1) do
      delete :destroy, id: @basketball_game
    end

    assert_redirected_to basketball_games_path
  end
end
