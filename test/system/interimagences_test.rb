require "application_system_test_case"

class InterimagencesTest < ApplicationSystemTestCase
  setup do
    @interimagence = interimagences(:one)
  end

  test "visiting the index" do
    visit interimagences_url
    assert_selector "h1", text: "Interimagences"
  end

  test "should create interimagence" do
    visit interimagences_url
    click_on "New interimagence"

    fill_in "Lat", with: @interimagence.lat
    fill_in "Lon", with: @interimagence.lon
    fill_in "Name", with: @interimagence.name
    click_on "Create Interimagence"

    assert_text "Interimagence was successfully created"
    click_on "Back"
  end

  test "should update Interimagence" do
    visit interimagence_url(@interimagence)
    click_on "Edit this interimagence", match: :first

    fill_in "Lat", with: @interimagence.lat
    fill_in "Lon", with: @interimagence.lon
    fill_in "Name", with: @interimagence.name
    click_on "Update Interimagence"

    assert_text "Interimagence was successfully updated"
    click_on "Back"
  end

  test "should destroy Interimagence" do
    visit interimagence_url(@interimagence)
    click_on "Destroy this interimagence", match: :first

    assert_text "Interimagence was successfully destroyed"
  end
end
