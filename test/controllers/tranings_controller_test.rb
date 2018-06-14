require 'test_helper'

class TraningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traning = tranings(:one)
  end

  test "should get index" do
    get tranings_url
    assert_response :success
  end

  test "should get new" do
    get new_traning_url
    assert_response :success
  end

  test "should create traning" do
    assert_difference('Traning.count') do
      post tranings_url, params: { traning: { description: @traning.description, end_date: @traning.end_date, init_date: @traning.init_date, title: @traning.title } }
    end

    assert_redirected_to traning_url(Traning.last)
  end

  test "should show traning" do
    get traning_url(@traning)
    assert_response :success
  end

  test "should get edit" do
    get edit_traning_url(@traning)
    assert_response :success
  end

  test "should update traning" do
    patch traning_url(@traning), params: { traning: { description: @traning.description, end_date: @traning.end_date, init_date: @traning.init_date, title: @traning.title } }
    assert_redirected_to traning_url(@traning)
  end

  test "should destroy traning" do
    assert_difference('Traning.count', -1) do
      delete traning_url(@traning)
    end

    assert_redirected_to tranings_url
  end
end
