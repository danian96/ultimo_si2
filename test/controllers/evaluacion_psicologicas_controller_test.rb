require 'test_helper'

class EvaluacionPsicologicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluacion_psicologica = evaluacion_psicologicas(:one)
  end

  test "should get index" do
    get evaluacion_psicologicas_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluacion_psicologica_url
    assert_response :success
  end

  test "should create evaluacion_psicologica" do
    assert_difference('EvaluacionPsicologica.count') do
      post evaluacion_psicologicas_url, params: { evaluacion_psicologica: { observaciones: @evaluacion_psicologica.observaciones, recomendaciones: @evaluacion_psicologica.recomendaciones } }
    end

    assert_redirected_to evaluacion_psicologica_url(EvaluacionPsicologica.last)
  end

  test "should show evaluacion_psicologica" do
    get evaluacion_psicologica_url(@evaluacion_psicologica)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluacion_psicologica_url(@evaluacion_psicologica)
    assert_response :success
  end

  test "should update evaluacion_psicologica" do
    patch evaluacion_psicologica_url(@evaluacion_psicologica), params: { evaluacion_psicologica: { observaciones: @evaluacion_psicologica.observaciones, recomendaciones: @evaluacion_psicologica.recomendaciones } }
    assert_redirected_to evaluacion_psicologica_url(@evaluacion_psicologica)
  end

  test "should destroy evaluacion_psicologica" do
    assert_difference('EvaluacionPsicologica.count', -1) do
      delete evaluacion_psicologica_url(@evaluacion_psicologica)
    end

    assert_redirected_to evaluacion_psicologicas_url
  end
end
