require "application_system_test_case"

class PlateformedemploisTest < ApplicationSystemTestCase
  setup do
    @plateformedemploi = plateformedemplois(:one)
  end

  test "visiting the index" do
    visit plateformedemplois_url
    assert_selector "h1", text: "Plateformedemplois"
  end

  test "should create plateformedemploi" do
    visit plateformedemplois_url
    click_on "New plateformedemploi"

    fill_in "Lat", with: @plateformedemploi.lat
    fill_in "Lon", with: @plateformedemploi.lon
    fill_in "Name", with: @plateformedemploi.name
    click_on "Create Plateformedemploi"

    assert_text "Plateformedemploi was successfully created"
    click_on "Back"
  end

  test "should update Plateformedemploi" do
    visit plateformedemploi_url(@plateformedemploi)
    click_on "Edit this plateformedemploi", match: :first

    fill_in "Lat", with: @plateformedemploi.lat
    fill_in "Lon", with: @plateformedemploi.lon
    fill_in "Name", with: @plateformedemploi.name
    click_on "Update Plateformedemploi"

    assert_text "Plateformedemploi was successfully updated"
    click_on "Back"
  end

  test "should destroy Plateformedemploi" do
    visit plateformedemploi_url(@plateformedemploi)
    click_on "Destroy this plateformedemploi", match: :first

    assert_text "Plateformedemploi was successfully destroyed"
  end
end
