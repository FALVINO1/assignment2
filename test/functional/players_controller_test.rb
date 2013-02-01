require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { AllStar: @player.AllStar, Assists: @player.Assists, Championships_Won: @player.Championships_Won, Finals_MVP_Won: @player.Finals_MVP_Won, MVP_Won: @player.MVP_Won, Name: @player.Name, Points: @player.Points, Position: @player.Position, Rebounds: @player.Rebounds, Teams_Played_For: @player.Teams_Played_For, Year_Retired: @player.Year_Retired }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    put :update, id: @player, player: { AllStar: @player.AllStar, Assists: @player.Assists, Championships_Won: @player.Championships_Won, Finals_MVP_Won: @player.Finals_MVP_Won, MVP_Won: @player.MVP_Won, Name: @player.Name, Points: @player.Points, Position: @player.Position, Rebounds: @player.Rebounds, Teams_Played_For: @player.Teams_Played_For, Year_Retired: @player.Year_Retired }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
