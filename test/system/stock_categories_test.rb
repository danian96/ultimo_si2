require "application_system_test_case"

class StockCategoriesTest < ApplicationSystemTestCase
  setup do
    @stock_category = stock_categories(:one)
  end

  test "visiting the index" do
    visit stock_categories_url
    assert_selector "h1", text: "Stock Categories"
  end

  test "creating a Stock category" do
    visit stock_categories_url
    click_on "New Stock Category"

    fill_in "Name", with: @stock_category.name
    click_on "Create Stock category"

    assert_text "Stock category was successfully created"
    click_on "Back"
  end

  test "updating a Stock category" do
    visit stock_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @stock_category.name
    click_on "Update Stock category"

    assert_text "Stock category was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock category" do
    visit stock_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock category was successfully destroyed"
  end
end
