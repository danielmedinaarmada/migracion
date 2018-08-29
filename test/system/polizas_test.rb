require "application_system_test_case"

class PolizasTest < ApplicationSystemTestCase
  setup do
    @poliza = polizas(:one)
  end

  test "visiting the index" do
    visit polizas_url
    assert_selector "h1", text: "Polizas"
  end

  test "creating a Poliza" do
    visit polizas_url
    click_on "New Poliza"

    fill_in "Fecha Migracion", with: @poliza.fecha_migracion
    fill_in "Ip", with: @poliza.ip
    fill_in "Observacion", with: @poliza.observacion
    fill_in "Poliza A Migrar", with: @poliza.poliza_a_migrar
    fill_in "Prima", with: @poliza.prima
    click_on "Create Poliza"

    assert_text "Poliza was successfully created"
    click_on "Back"
  end

  test "updating a Poliza" do
    visit polizas_url
    click_on "Edit", match: :first

    fill_in "Fecha Migracion", with: @poliza.fecha_migracion
    fill_in "Ip", with: @poliza.ip
    fill_in "Observacion", with: @poliza.observacion
    fill_in "Poliza A Migrar", with: @poliza.poliza_a_migrar
    fill_in "Prima", with: @poliza.prima
    click_on "Update Poliza"

    assert_text "Poliza was successfully updated"
    click_on "Back"
  end

  test "destroying a Poliza" do
    visit polizas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poliza was successfully destroyed"
  end
end
