require "application_system_test_case"

class EvaluacionTecnicasTest < ApplicationSystemTestCase
  setup do
    @evaluacion_tecnica = evaluacion_tecnicas(:one)
  end

  test "visiting the index" do
    visit evaluacion_tecnicas_url
    assert_selector "h1", text: "Evaluacion Tecnicas"
  end

  test "creating a Evaluacion tecnica" do
    visit evaluacion_tecnicas_url
    click_on "New Evaluacion Tecnica"

    fill_in "Calificacion", with: @evaluacion_tecnica.calificacion
    fill_in "Observacion", with: @evaluacion_tecnica.observacion
    click_on "Create Evaluacion tecnica"

    assert_text "Evaluacion tecnica was successfully created"
    click_on "Back"
  end

  test "updating a Evaluacion tecnica" do
    visit evaluacion_tecnicas_url
    click_on "Edit", match: :first

    fill_in "Calificacion", with: @evaluacion_tecnica.calificacion
    fill_in "Observacion", with: @evaluacion_tecnica.observacion
    click_on "Update Evaluacion tecnica"

    assert_text "Evaluacion tecnica was successfully updated"
    click_on "Back"
  end

  test "destroying a Evaluacion tecnica" do
    visit evaluacion_tecnicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evaluacion tecnica was successfully destroyed"
  end
end
