require "application_system_test_case"

class DetalleAplicacionsTest < ApplicationSystemTestCase
  setup do
    @detalle_aplicacion = detalle_aplicacions(:one)
  end

  test "visiting the index" do
    visit detalle_aplicacions_url
    assert_selector "h1", text: "Detalle Aplicacions"
  end

  test "creating a Detalle aplicacion" do
    visit detalle_aplicacions_url
    click_on "New Detalle Aplicacion"

    fill_in "Estado", with: @detalle_aplicacion.estado
    fill_in "Evaluacion Psicologica", with: @detalle_aplicacion.evaluacion_psicologica_id
    fill_in "Evaluacion Tecnica", with: @detalle_aplicacion.evaluacion_tecnica_id
    fill_in "Fecha", with: @detalle_aplicacion.fecha
    fill_in "People", with: @detalle_aplicacion.people_id
    click_on "Create Detalle aplicacion"

    assert_text "Detalle aplicacion was successfully created"
    click_on "Back"
  end

  test "updating a Detalle aplicacion" do
    visit detalle_aplicacions_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @detalle_aplicacion.estado
    fill_in "Evaluacion Psicologica", with: @detalle_aplicacion.evaluacion_psicologica_id
    fill_in "Evaluacion Tecnica", with: @detalle_aplicacion.evaluacion_tecnica_id
    fill_in "Fecha", with: @detalle_aplicacion.fecha
    fill_in "People", with: @detalle_aplicacion.people_id
    click_on "Update Detalle aplicacion"

    assert_text "Detalle aplicacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Detalle aplicacion" do
    visit detalle_aplicacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detalle aplicacion was successfully destroyed"
  end
end
