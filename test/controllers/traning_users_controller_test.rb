require 'test_helper'

class TraningUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traning_user = traning_users(:one)
  end

  test "should get index" do
    get traning_users_url
    assert_response :success
  end

  test "should get new" do
    get new_traning_user_url
    assert_response :success
  end

  test "should create traning_user" do
    assert_difference('TraningUser.count') do
      post traning_users_url, params: { traning_user: { status: @traning_user.status, traning_id: @traning_user.traning_id, user_id: @traning_user.user_id } }
    end

    assert_redirected_to traning_user_url(TraningUser.last)
  end

  test "should show traning_user" do
    get traning_user_url(@traning_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_traning_user_url(@traning_user)
    assert_response :success
  end

  test "should update traning_user" do
    patch traning_user_url(@traning_user), params: { traning_user: { status: @traning_user.status, traning_id: @traning_user.traning_id, user_id: @traning_user.user_id } }
    assert_redirected_to traning_user_url(@traning_user)
  end

  test "should destroy traning_user" do
    assert_difference('TraningUser.count', -1) do
      delete traning_user_url(@traning_user)
    end

    assert_redirected_to traning_users_url
  end
end
