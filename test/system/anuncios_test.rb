require "application_system_test_case"

class AnunciosTest < ApplicationSystemTestCase
  setup do
    @anuncio = anuncios(:one)
  end

  test "visiting the index" do
    visit anuncios_url
    assert_selector "h1", text: "Anuncios"
  end

  test "creating a Anuncio" do
    visit anuncios_url
    click_on "New Anuncio"

    fill_in "Departamento", with: @anuncio.departamento_id
    fill_in "Descripcion", with: @anuncio.descripcion
    fill_in "Estado", with: @anuncio.estado
    fill_in "Titulo", with: @anuncio.titulo
    click_on "Create Anuncio"

    assert_text "Anuncio was successfully created"
    click_on "Back"
  end

  test "updating a Anuncio" do
    visit anuncios_url
    click_on "Edit", match: :first

    fill_in "Departamento", with: @anuncio.departamento_id
    fill_in "Descripcion", with: @anuncio.descripcion
    fill_in "Estado", with: @anuncio.estado
    fill_in "Titulo", with: @anuncio.titulo
    click_on "Update Anuncio"

    assert_text "Anuncio was successfully updated"
    click_on "Back"
  end

  test "destroying a Anuncio" do
    visit anuncios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anuncio was successfully destroyed"
  end
end
