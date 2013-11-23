require 'test_helper'

class PlayerteamsControllerTest < ActionController::TestCase
  setup do
    @playerteam = playerteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playerteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playerteam" do
    assert_difference('Playerteam.count') do
      post :create, playerteam: {  }
    end

    assert_redirected_to playerteam_path(assigns(:playerteam))
  end

  test "should show playerteam" do
    get :show, id: @playerteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @playerteam
    assert_response :success
  end

  test "should update playerteam" do
    put :update, id: @playerteam, playerteam: {  }
    assert_redirected_to playerteam_path(assigns(:playerteam))
  end

  test "should destroy playerteam" do
    assert_difference('Playerteam.count', -1) do
      delete :destroy, id: @playerteam
    end

    assert_redirected_to playerteams_path
  end
end
