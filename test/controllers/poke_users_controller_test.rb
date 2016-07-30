require 'test_helper'

class PokeUsersControllerTest < ActionController::TestCase
  setup do
    @poke_user = poke_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poke_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poke_user" do
    assert_difference('PokeUser.count') do
      post :create, poke_user: { level: @poke_user.level }
    end

    assert_redirected_to poke_user_path(assigns(:poke_user))
  end

  test "should show poke_user" do
    get :show, id: @poke_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poke_user
    assert_response :success
  end

  test "should update poke_user" do
    patch :update, id: @poke_user, poke_user: { level: @poke_user.level }
    assert_redirected_to poke_user_path(assigns(:poke_user))
  end

  test "should destroy poke_user" do
    assert_difference('PokeUser.count', -1) do
      delete :destroy, id: @poke_user
    end

    assert_redirected_to poke_users_path
  end
end
