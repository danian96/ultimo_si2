require 'test_helper'

class DesignacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @designacion = designacions(:one)
  end

  test "should get index" do
    get designacions_url
    assert_response :success
  end

  test "should get new" do
    get new_designacion_url
    assert_response :success
  end

  test "should create designacion" do
    assert_difference('Designacion.count') do
      post designacions_url, params: { designacion: { departamento_id: @designacion.departamento_id, name: @designacion.name, user_id: @designacion.user_id } }
    end

    assert_redirected_to designacion_url(Designacion.last)
  end

  test "should show designacion" do
    get designacion_url(@designacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_designacion_url(@designacion)
    assert_response :success
  end

  test "should update designacion" do
    patch designacion_url(@designacion), params: { designacion: { departamento_id: @designacion.departamento_id, name: @designacion.name, user_id: @designacion.user_id } }
    assert_redirected_to designacion_url(@designacion)
  end

  test "should destroy designacion" do
    assert_difference('Designacion.count', -1) do
      delete designacion_url(@designacion)
    end

    assert_redirected_to designacions_url
  end
end
