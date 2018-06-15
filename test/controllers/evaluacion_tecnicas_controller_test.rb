require 'test_helper'

class EvaluacionTecnicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluacion_tecnica = evaluacion_tecnicas(:one)
  end

  test "should get index" do
    get evaluacion_tecnicas_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluacion_tecnica_url
    assert_response :success
  end

  test "should create evaluacion_tecnica" do
    assert_difference('EvaluacionTecnica.count') do
      post evaluacion_tecnicas_url, params: { evaluacion_tecnica: { calificacion: @evaluacion_tecnica.calificacion, observacion: @evaluacion_tecnica.observacion } }
    end

    assert_redirected_to evaluacion_tecnica_url(EvaluacionTecnica.last)
  end

  test "should show evaluacion_tecnica" do
    get evaluacion_tecnica_url(@evaluacion_tecnica)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluacion_tecnica_url(@evaluacion_tecnica)
    assert_response :success
  end

  test "should update evaluacion_tecnica" do
    patch evaluacion_tecnica_url(@evaluacion_tecnica), params: { evaluacion_tecnica: { calificacion: @evaluacion_tecnica.calificacion, observacion: @evaluacion_tecnica.observacion } }
    assert_redirected_to evaluacion_tecnica_url(@evaluacion_tecnica)
  end

  test "should destroy evaluacion_tecnica" do
    assert_difference('EvaluacionTecnica.count', -1) do
      delete evaluacion_tecnica_url(@evaluacion_tecnica)
    end

    assert_redirected_to evaluacion_tecnicas_url
  end
end
