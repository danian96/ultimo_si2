require "application_system_test_case"

class ConvocatoriesTest < ApplicationSystemTestCase
  setup do
    @convocatory = convocatories(:one)
  end

  test "visiting the index" do
    visit convocatories_url
    assert_selector "h1", text: "Convocatories"
  end

  test "creating a Convocatory" do
    visit convocatories_url
    click_on "New Convocatory"

    fill_in "Cantidad Vacantes", with: @convocatory.cantidad_vacantes
    fill_in "Descripcion", with: @convocatory.descripcion
    fill_in "Designacion", with: @convocatory.designacion_id
    fill_in "Detalle Aplicacion", with: @convocatory.detalle_aplicacion_id
    fill_in "Estado", with: @convocatory.estado
    fill_in "Fecha Fin", with: @convocatory.fecha_fin
    fill_in "Fecha Ini", with: @convocatory.fecha_ini
    fill_in "Titulo", with: @convocatory.titulo
    click_on "Create Convocatory"

    assert_text "Convocatory was successfully created"
    click_on "Back"
  end

  test "updating a Convocatory" do
    visit convocatories_url
    click_on "Edit", match: :first

    fill_in "Cantidad Vacantes", with: @convocatory.cantidad_vacantes
    fill_in "Descripcion", with: @convocatory.descripcion
    fill_in "Designacion", with: @convocatory.designacion_id
    fill_in "Detalle Aplicacion", with: @convocatory.detalle_aplicacion_id
    fill_in "Estado", with: @convocatory.estado
    fill_in "Fecha Fin", with: @convocatory.fecha_fin
    fill_in "Fecha Ini", with: @convocatory.fecha_ini
    fill_in "Titulo", with: @convocatory.titulo
    click_on "Update Convocatory"

    assert_text "Convocatory was successfully updated"
    click_on "Back"
  end

  test "destroying a Convocatory" do
    visit convocatories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Convocatory was successfully destroyed"
  end
end
