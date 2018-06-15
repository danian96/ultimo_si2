require 'test_helper'

class PersonSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_skill = person_skills(:one)
  end

  test "should get index" do
    get person_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_person_skill_url
    assert_response :success
  end

  test "should create person_skill" do
    assert_difference('PersonSkill.count') do
      post person_skills_url, params: { person_skill: { nivel: @person_skill.nivel, person_id: @person_skill.person_id, skill_id: @person_skill.skill_id } }
    end

    assert_redirected_to person_skill_url(PersonSkill.last)
  end

  test "should show person_skill" do
    get person_skill_url(@person_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_skill_url(@person_skill)
    assert_response :success
  end

  test "should update person_skill" do
    patch person_skill_url(@person_skill), params: { person_skill: { nivel: @person_skill.nivel, person_id: @person_skill.person_id, skill_id: @person_skill.skill_id } }
    assert_redirected_to person_skill_url(@person_skill)
  end

  test "should destroy person_skill" do
    assert_difference('PersonSkill.count', -1) do
      delete person_skill_url(@person_skill)
    end

    assert_redirected_to person_skills_url
  end
end
