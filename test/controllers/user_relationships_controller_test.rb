require 'test_helper'

class UserRelationshipsControllerTest < ActionController::TestCase
  setup do
    @user_relationship = user_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_relationship" do
    assert_difference('UserRelationship.count') do
      post :create, user_relationship: { follower_id: @user_relationship.follower_id, following_id: @user_relationship.following_id }
    end

    assert_redirected_to user_relationship_path(assigns(:user_relationship))
  end

  test "should show user_relationship" do
    get :show, id: @user_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_relationship
    assert_response :success
  end

  test "should update user_relationship" do
    patch :update, id: @user_relationship, user_relationship: { follower_id: @user_relationship.follower_id, following_id: @user_relationship.following_id }
    assert_redirected_to user_relationship_path(assigns(:user_relationship))
  end

  test "should destroy user_relationship" do
    assert_difference('UserRelationship.count', -1) do
      delete :destroy, id: @user_relationship
    end

    assert_redirected_to user_relationships_path
  end
end
