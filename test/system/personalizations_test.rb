require "application_system_test_case"

class PersonalizationsTest < ApplicationSystemTestCase
  setup do
    @personalization = personalizations(:one)
  end

  test "visiting the index" do
    visit personalizations_url
    assert_selector "h1", text: "Personalizations"
  end

  test "creating a Personalization" do
    visit personalizations_url
    click_on "New Personalization"

    fill_in "Name", with: @personalization.name
    fill_in "User", with: @personalization.user_id
    click_on "Create Personalization"

    assert_text "Personalization was successfully created"
    click_on "Back"
  end

  test "updating a Personalization" do
    visit personalizations_url
    click_on "Edit", match: :first

    fill_in "Name", with: @personalization.name
    fill_in "User", with: @personalization.user_id
    click_on "Update Personalization"

    assert_text "Personalization was successfully updated"
    click_on "Back"
  end

  test "destroying a Personalization" do
    visit personalizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personalization was successfully destroyed"
  end
end
