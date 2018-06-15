require "application_system_test_case"

class PersonProfessionsTest < ApplicationSystemTestCase
  setup do
    @person_profession = person_professions(:one)
  end

  test "visiting the index" do
    visit person_professions_url
    assert_selector "h1", text: "Person Professions"
  end

  test "creating a Person profession" do
    visit person_professions_url
    click_on "New Person Profession"

    fill_in "Grade Academic", with: @person_profession.grade_academic_id
    fill_in "Person", with: @person_profession.person_id
    fill_in "Profession", with: @person_profession.profession_id
    click_on "Create Person profession"

    assert_text "Person profession was successfully created"
    click_on "Back"
  end

  test "updating a Person profession" do
    visit person_professions_url
    click_on "Edit", match: :first

    fill_in "Grade Academic", with: @person_profession.grade_academic_id
    fill_in "Person", with: @person_profession.person_id
    fill_in "Profession", with: @person_profession.profession_id
    click_on "Update Person profession"

    assert_text "Person profession was successfully updated"
    click_on "Back"
  end

  test "destroying a Person profession" do
    visit person_professions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person profession was successfully destroyed"
  end
end
