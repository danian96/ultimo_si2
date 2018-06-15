require "application_system_test_case"

class DesignacionsTest < ApplicationSystemTestCase
  setup do
    @designacion = designacions(:one)
  end

  test "visiting the index" do
    visit designacions_url
    assert_selector "h1", text: "Designacions"
  end

  test "creating a Designacion" do
    visit designacions_url
    click_on "New Designacion"

    fill_in "Departamento", with: @designacion.departamento_id
    fill_in "Name", with: @designacion.name
    fill_in "User", with: @designacion.user_id
    click_on "Create Designacion"

    assert_text "Designacion was successfully created"
    click_on "Back"
  end

  test "updating a Designacion" do
    visit designacions_url
    click_on "Edit", match: :first

    fill_in "Departamento", with: @designacion.departamento_id
    fill_in "Name", with: @designacion.name
    fill_in "User", with: @designacion.user_id
    click_on "Update Designacion"

    assert_text "Designacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Designacion" do
    visit designacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Designacion was successfully destroyed"
  end
end
