require "application_system_test_case"

class TraningUsersTest < ApplicationSystemTestCase
  setup do
    @traning_user = traning_users(:one)
  end

  test "visiting the index" do
    visit traning_users_url
    assert_selector "h1", text: "Traning Users"
  end

  test "creating a Traning user" do
    visit traning_users_url
    click_on "New Traning User"

    fill_in "Status", with: @traning_user.status
    fill_in "Traning", with: @traning_user.traning_id
    fill_in "User", with: @traning_user.user_id
    click_on "Create Traning user"

    assert_text "Traning user was successfully created"
    click_on "Back"
  end

  test "updating a Traning user" do
    visit traning_users_url
    click_on "Edit", match: :first

    fill_in "Status", with: @traning_user.status
    fill_in "Traning", with: @traning_user.traning_id
    fill_in "User", with: @traning_user.user_id
    click_on "Update Traning user"

    assert_text "Traning user was successfully updated"
    click_on "Back"
  end

  test "destroying a Traning user" do
    visit traning_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Traning user was successfully destroyed"
  end
end
