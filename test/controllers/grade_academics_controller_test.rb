require 'test_helper'

class GradeAcademicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grade_academic = grade_academics(:one)
  end

  test "should get index" do
    get grade_academics_url
    assert_response :success
  end

  test "should get new" do
    get new_grade_academic_url
    assert_response :success
  end

  test "should create grade_academic" do
    assert_difference('GradeAcademic.count') do
      post grade_academics_url, params: { grade_academic: { institution: @grade_academic.institution, name: @grade_academic.name } }
    end

    assert_redirected_to grade_academic_url(GradeAcademic.last)
  end

  test "should show grade_academic" do
    get grade_academic_url(@grade_academic)
    assert_response :success
  end

  test "should get edit" do
    get edit_grade_academic_url(@grade_academic)
    assert_response :success
  end

  test "should update grade_academic" do
    patch grade_academic_url(@grade_academic), params: { grade_academic: { institution: @grade_academic.institution, name: @grade_academic.name } }
    assert_redirected_to grade_academic_url(@grade_academic)
  end

  test "should destroy grade_academic" do
    assert_difference('GradeAcademic.count', -1) do
      delete grade_academic_url(@grade_academic)
    end

    assert_redirected_to grade_academics_url
  end
end
