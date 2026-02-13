require "application_system_test_case"

class PubliqueinstitutionsTest < ApplicationSystemTestCase
  setup do
    @publiqueinstitution = publiqueinstitutions(:one)
  end

  test "visiting the index" do
    visit publiqueinstitutions_url
    assert_selector "h1", text: "Publiqueinstitutions"
  end

  test "should create publiqueinstitution" do
    visit publiqueinstitutions_url
    click_on "New publiqueinstitution"

    fill_in "Lat", with: @publiqueinstitution.lat
    fill_in "Lon", with: @publiqueinstitution.lon
    fill_in "Name", with: @publiqueinstitution.name
    click_on "Create Publiqueinstitution"

    assert_text "Publiqueinstitution was successfully created"
    click_on "Back"
  end

  test "should update Publiqueinstitution" do
    visit publiqueinstitution_url(@publiqueinstitution)
    click_on "Edit this publiqueinstitution", match: :first

    fill_in "Lat", with: @publiqueinstitution.lat
    fill_in "Lon", with: @publiqueinstitution.lon
    fill_in "Name", with: @publiqueinstitution.name
    click_on "Update Publiqueinstitution"

    assert_text "Publiqueinstitution was successfully updated"
    click_on "Back"
  end

  test "should destroy Publiqueinstitution" do
    visit publiqueinstitution_url(@publiqueinstitution)
    click_on "Destroy this publiqueinstitution", match: :first

    assert_text "Publiqueinstitution was successfully destroyed"
  end
end
