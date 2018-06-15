require "application_system_test_case"

class AsigDetailsTest < ApplicationSystemTestCase
  setup do
    @asig_detail = asig_details(:one)
  end

  test "visiting the index" do
    visit asig_details_url
    assert_selector "h1", text: "Asig Details"
  end

  test "creating a Asig detail" do
    visit asig_details_url
    click_on "New Asig Detail"

    fill_in "Asig Stock", with: @asig_detail.asig_stock_id
    fill_in "Quantity", with: @asig_detail.quantity
    fill_in "Stock", with: @asig_detail.stock_id
    click_on "Create Asig detail"

    assert_text "Asig detail was successfully created"
    click_on "Back"
  end

  test "updating a Asig detail" do
    visit asig_details_url
    click_on "Edit", match: :first

    fill_in "Asig Stock", with: @asig_detail.asig_stock_id
    fill_in "Quantity", with: @asig_detail.quantity
    fill_in "Stock", with: @asig_detail.stock_id
    click_on "Update Asig detail"

    assert_text "Asig detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Asig detail" do
    visit asig_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asig detail was successfully destroyed"
  end
end
