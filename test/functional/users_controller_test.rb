require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  fixtures :users
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => { }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, :id => users(:matz).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => users(:matz).id
    assert_response :success
  end

  test "should update user" do
    put :update, :id => users(:matz).id, :user => { }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, :id => users(:matz).id
    end

    assert_redirected_to users_path
  end
end
