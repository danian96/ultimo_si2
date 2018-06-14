require 'test_helper'

class AsigStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asig_stock = asig_stocks(:one)
  end

  test "should get index" do
    get asig_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_asig_stock_url
    assert_response :success
  end

  test "should create asig_stock" do
    assert_difference('AsigStock.count') do
      post asig_stocks_url, params: { asig_stock: { asig_date: @asig_stock.asig_date, user_id: @asig_stock.user_id } }
    end

    assert_redirected_to asig_stock_url(AsigStock.last)
  end

  test "should show asig_stock" do
    get asig_stock_url(@asig_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_asig_stock_url(@asig_stock)
    assert_response :success
  end

  test "should update asig_stock" do
    patch asig_stock_url(@asig_stock), params: { asig_stock: { asig_date: @asig_stock.asig_date, user_id: @asig_stock.user_id } }
    assert_redirected_to asig_stock_url(@asig_stock)
  end

  test "should destroy asig_stock" do
    assert_difference('AsigStock.count', -1) do
      delete asig_stock_url(@asig_stock)
    end

    assert_redirected_to asig_stocks_url
  end
end
