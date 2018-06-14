require 'test_helper'

class AsigDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asig_detail = asig_details(:one)
  end

  test "should get index" do
    get asig_details_url
    assert_response :success
  end

  test "should get new" do
    get new_asig_detail_url
    assert_response :success
  end

  test "should create asig_detail" do
    assert_difference('AsigDetail.count') do
      post asig_details_url, params: { asig_detail: { asig_stock_id: @asig_detail.asig_stock_id, quantity: @asig_detail.quantity, stock_id: @asig_detail.stock_id } }
    end

    assert_redirected_to asig_detail_url(AsigDetail.last)
  end

  test "should show asig_detail" do
    get asig_detail_url(@asig_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_asig_detail_url(@asig_detail)
    assert_response :success
  end

  test "should update asig_detail" do
    patch asig_detail_url(@asig_detail), params: { asig_detail: { asig_stock_id: @asig_detail.asig_stock_id, quantity: @asig_detail.quantity, stock_id: @asig_detail.stock_id } }
    assert_redirected_to asig_detail_url(@asig_detail)
  end

  test "should destroy asig_detail" do
    assert_difference('AsigDetail.count', -1) do
      delete asig_detail_url(@asig_detail)
    end

    assert_redirected_to asig_details_url
  end
end
