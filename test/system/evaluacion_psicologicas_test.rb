require "application_system_test_case"

class EvaluacionPsicologicasTest < ApplicationSystemTestCase
  setup do
    @evaluacion_psicologica = evaluacion_psicologicas(:one)
  end

  test "visiting the index" do
    visit evaluacion_psicologicas_url
    assert_selector "h1", text: "Evaluacion Psicologicas"
  end

  test "creating a Evaluacion psicologica" do
    visit evaluacion_psicologicas_url
    click_on "New Evaluacion Psicologica"

    fill_in "Observaciones", with: @evaluacion_psicologica.observaciones
    fill_in "Recomendaciones", with: @evaluacion_psicologica.recomendaciones
    click_on "Create Evaluacion psicologica"

    assert_text "Evaluacion psicologica was successfully created"
    click_on "Back"
  end

  test "updating a Evaluacion psicologica" do
    visit evaluacion_psicologicas_url
    click_on "Edit", match: :first

    fill_in "Observaciones", with: @evaluacion_psicologica.observaciones
    fill_in "Recomendaciones", with: @evaluacion_psicologica.recomendaciones
    click_on "Update Evaluacion psicologica"

    assert_text "Evaluacion psicologica was successfully updated"
    click_on "Back"
  end

  test "destroying a Evaluacion psicologica" do
    visit evaluacion_psicologicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evaluacion psicologica was successfully destroyed"
  end
end
