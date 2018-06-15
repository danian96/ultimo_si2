require "application_system_test_case"

class GradeAcademicsTest < ApplicationSystemTestCase
  setup do
    @grade_academic = grade_academics(:one)
  end

  test "visiting the index" do
    visit grade_academics_url
    assert_selector "h1", text: "Grade Academics"
  end

  test "creating a Grade academic" do
    visit grade_academics_url
    click_on "New Grade Academic"

    fill_in "Institution", with: @grade_academic.institution
    fill_in "Name", with: @grade_academic.name
    click_on "Create Grade academic"

    assert_text "Grade academic was successfully created"
    click_on "Back"
  end

  test "updating a Grade academic" do
    visit grade_academics_url
    click_on "Edit", match: :first

    fill_in "Institution", with: @grade_academic.institution
    fill_in "Name", with: @grade_academic.name
    click_on "Update Grade academic"

    assert_text "Grade academic was successfully updated"
    click_on "Back"
  end

  test "destroying a Grade academic" do
    visit grade_academics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grade academic was successfully destroyed"
  end
end
