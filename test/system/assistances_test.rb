require "application_system_test_case"

class AssistancesTest < ApplicationSystemTestCase
  setup do
    @assistance = assistances(:one)
  end

  test "visiting the index" do
    visit assistances_url
    assert_selector "h1", text: "Assistances"
  end

  test "creating a Assistance" do
    visit assistances_url
    click_on "New Assistance"

    fill_in "Date Of Assistance", with: @assistance.date_of_assistance
    fill_in "Day", with: @assistance.day
    fill_in "Final Time", with: @assistance.final_time
    fill_in "Init Time", with: @assistance.init_time
    fill_in "People", with: @assistance.people_id
    click_on "Create Assistance"

    assert_text "Assistance was successfully created"
    click_on "Back"
  end

  test "updating a Assistance" do
    visit assistances_url
    click_on "Edit", match: :first

    fill_in "Date Of Assistance", with: @assistance.date_of_assistance
    fill_in "Day", with: @assistance.day
    fill_in "Final Time", with: @assistance.final_time
    fill_in "Init Time", with: @assistance.init_time
    fill_in "People", with: @assistance.people_id
    click_on "Update Assistance"

    assert_text "Assistance was successfully updated"
    click_on "Back"
  end

  test "destroying a Assistance" do
    visit assistances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assistance was successfully destroyed"
  end
end
