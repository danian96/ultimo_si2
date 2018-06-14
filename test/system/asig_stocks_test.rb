require "application_system_test_case"

class AsigStocksTest < ApplicationSystemTestCase
  setup do
    @asig_stock = asig_stocks(:one)
  end

  test "visiting the index" do
    visit asig_stocks_url
    assert_selector "h1", text: "Asig Stocks"
  end

  test "creating a Asig stock" do
    visit asig_stocks_url
    click_on "New Asig Stock"

    fill_in "Asig Date", with: @asig_stock.asig_date
    fill_in "User", with: @asig_stock.user_id
    click_on "Create Asig stock"

    assert_text "Asig stock was successfully created"
    click_on "Back"
  end

  test "updating a Asig stock" do
    visit asig_stocks_url
    click_on "Edit", match: :first

    fill_in "Asig Date", with: @asig_stock.asig_date
    fill_in "User", with: @asig_stock.user_id
    click_on "Update Asig stock"

    assert_text "Asig stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Asig stock" do
    visit asig_stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asig stock was successfully destroyed"
  end
end
