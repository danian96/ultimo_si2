require 'test_helper'

class PersonProfessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_profession = person_professions(:one)
  end

  test "should get index" do
    get person_professions_url
    assert_response :success
  end

  test "should get new" do
    get new_person_profession_url
    assert_response :success
  end

  test "should create person_profession" do
    assert_difference('PersonProfession.count') do
      post person_professions_url, params: { person_profession: { grade_academic_id: @person_profession.grade_academic_id, person_id: @person_profession.person_id, profession_id: @person_profession.profession_id } }
    end

    assert_redirected_to person_profession_url(PersonProfession.last)
  end

  test "should show person_profession" do
    get person_profession_url(@person_profession)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_profession_url(@person_profession)
    assert_response :success
  end

  test "should update person_profession" do
    patch person_profession_url(@person_profession), params: { person_profession: { grade_academic_id: @person_profession.grade_academic_id, person_id: @person_profession.person_id, profession_id: @person_profession.profession_id } }
    assert_redirected_to person_profession_url(@person_profession)
  end

  test "should destroy person_profession" do
    assert_difference('PersonProfession.count', -1) do
      delete person_profession_url(@person_profession)
    end

    assert_redirected_to person_professions_url
  end
end
