require 'test_helper'

class DetalleAplicacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_aplicacion = detalle_aplicacions(:one)
  end

  test "should get index" do
    get detalle_aplicacions_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_aplicacion_url
    assert_response :success
  end

  test "should create detalle_aplicacion" do
    assert_difference('DetalleAplicacion.count') do
      post detalle_aplicacions_url, params: { detalle_aplicacion: { estado: @detalle_aplicacion.estado, evaluacion_psicologica_id: @detalle_aplicacion.evaluacion_psicologica_id, evaluacion_tecnica_id: @detalle_aplicacion.evaluacion_tecnica_id, fecha: @detalle_aplicacion.fecha, people_id: @detalle_aplicacion.people_id } }
    end

    assert_redirected_to detalle_aplicacion_url(DetalleAplicacion.last)
  end

  test "should show detalle_aplicacion" do
    get detalle_aplicacion_url(@detalle_aplicacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_aplicacion_url(@detalle_aplicacion)
    assert_response :success
  end

  test "should update detalle_aplicacion" do
    patch detalle_aplicacion_url(@detalle_aplicacion), params: { detalle_aplicacion: { estado: @detalle_aplicacion.estado, evaluacion_psicologica_id: @detalle_aplicacion.evaluacion_psicologica_id, evaluacion_tecnica_id: @detalle_aplicacion.evaluacion_tecnica_id, fecha: @detalle_aplicacion.fecha, people_id: @detalle_aplicacion.people_id } }
    assert_redirected_to detalle_aplicacion_url(@detalle_aplicacion)
  end

  test "should destroy detalle_aplicacion" do
    assert_difference('DetalleAplicacion.count', -1) do
      delete detalle_aplicacion_url(@detalle_aplicacion)
    end

    assert_redirected_to detalle_aplicacions_url
  end
end
