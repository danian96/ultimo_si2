require "application_system_test_case"

class CivilStatesTest < ApplicationSystemTestCase
  setup do
    @civil_state = civil_states(:one)
  end

  test "visiting the index" do
    visit civil_states_url
    assert_selector "h1", text: "Civil States"
  end

  test "creating a Civil state" do
    visit civil_states_url
    click_on "New Civil State"

    fill_in "Name", with: @civil_state.name
    click_on "Create Civil state"

    assert_text "Civil state was successfully created"
    click_on "Back"
  end

  test "updating a Civil state" do
    visit civil_states_url
    click_on "Edit", match: :first

    fill_in "Name", with: @civil_state.name
    click_on "Update Civil state"

    assert_text "Civil state was successfully updated"
    click_on "Back"
  end

  test "destroying a Civil state" do
    visit civil_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Civil state was successfully destroyed"
  end
end
