require 'test_helper'

class PersonalizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personalization = personalizations(:one)
  end

  test "should get index" do
    get personalizations_url
    assert_response :success
  end

  test "should get new" do
    get new_personalization_url
    assert_response :success
  end

  test "should create personalization" do
    assert_difference('Personalization.count') do
      post personalizations_url, params: { personalization: { name: @personalization.name, user_id: @personalization.user_id } }
    end

    assert_redirected_to personalization_url(Personalization.last)
  end

  test "should show personalization" do
    get personalization_url(@personalization)
    assert_response :success
  end

  test "should get edit" do
    get edit_personalization_url(@personalization)
    assert_response :success
  end

  test "should update personalization" do
    patch personalization_url(@personalization), params: { personalization: { name: @personalization.name, user_id: @personalization.user_id } }
    assert_redirected_to personalization_url(@personalization)
  end

  test "should destroy personalization" do
    assert_difference('Personalization.count', -1) do
      delete personalization_url(@personalization)
    end

    assert_redirected_to personalizations_url
  end
end
