require "application_system_test_case"

class MemorandumsTest < ApplicationSystemTestCase
  setup do
    @memorandum = memorandums(:one)
  end

  test "visiting the index" do
    visit memorandums_url
    assert_selector "h1", text: "Memorandums"
  end

  test "creating a Memorandum" do
    visit memorandums_url
    click_on "New Memorandum"

    fill_in "Description", with: @memorandum.description
    fill_in "Memorandum Type", with: @memorandum.memorandum_type_id
    fill_in "Title", with: @memorandum.title
    fill_in "User", with: @memorandum.user_id
    click_on "Create Memorandum"

    assert_text "Memorandum was successfully created"
    click_on "Back"
  end

  test "updating a Memorandum" do
    visit memorandums_url
    click_on "Edit", match: :first

    fill_in "Description", with: @memorandum.description
    fill_in "Memorandum Type", with: @memorandum.memorandum_type_id
    fill_in "Title", with: @memorandum.title
    fill_in "User", with: @memorandum.user_id
    click_on "Update Memorandum"

    assert_text "Memorandum was successfully updated"
    click_on "Back"
  end

  test "destroying a Memorandum" do
    visit memorandums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Memorandum was successfully destroyed"
  end
end
