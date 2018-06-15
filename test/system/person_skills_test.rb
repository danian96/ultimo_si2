require "application_system_test_case"

class PersonSkillsTest < ApplicationSystemTestCase
  setup do
    @person_skill = person_skills(:one)
  end

  test "visiting the index" do
    visit person_skills_url
    assert_selector "h1", text: "Person Skills"
  end

  test "creating a Person skill" do
    visit person_skills_url
    click_on "New Person Skill"

    fill_in "Nivel", with: @person_skill.nivel
    fill_in "Person", with: @person_skill.person_id
    fill_in "Skill", with: @person_skill.skill_id
    click_on "Create Person skill"

    assert_text "Person skill was successfully created"
    click_on "Back"
  end

  test "updating a Person skill" do
    visit person_skills_url
    click_on "Edit", match: :first

    fill_in "Nivel", with: @person_skill.nivel
    fill_in "Person", with: @person_skill.person_id
    fill_in "Skill", with: @person_skill.skill_id
    click_on "Update Person skill"

    assert_text "Person skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Person skill" do
    visit person_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person skill was successfully destroyed"
  end
end
