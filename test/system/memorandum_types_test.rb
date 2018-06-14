require "application_system_test_case"

class MemorandumTypesTest < ApplicationSystemTestCase
  setup do
    @memorandum_type = memorandum_types(:one)
  end

  test "visiting the index" do
    visit memorandum_types_url
    assert_selector "h1", text: "Memorandum Types"
  end

  test "creating a Memorandum type" do
    visit memorandum_types_url
    click_on "New Memorandum Type"

    fill_in "Name", with: @memorandum_type.name
    click_on "Create Memorandum type"

    assert_text "Memorandum type was successfully created"
    click_on "Back"
  end

  test "updating a Memorandum type" do
    visit memorandum_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @memorandum_type.name
    click_on "Update Memorandum type"

    assert_text "Memorandum type was successfully updated"
    click_on "Back"
  end

  test "destroying a Memorandum type" do
    visit memorandum_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Memorandum type was successfully destroyed"
  end
end
