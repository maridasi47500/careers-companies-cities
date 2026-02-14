require "application_system_test_case"

class JobeventsTest < ApplicationSystemTestCase
  setup do
    @jobevent = jobevents(:one)
  end

  test "visiting the index" do
    visit jobevents_url
    assert_selector "h1", text: "Jobevents"
  end

  test "should create jobevent" do
    visit jobevents_url
    click_on "New jobevent"

    fill_in "Date", with: @jobevent.date
    fill_in "Description", with: @jobevent.description
    fill_in "Lat", with: @jobevent.lat
    fill_in "Lon", with: @jobevent.lon
    fill_in "Title", with: @jobevent.title
    click_on "Create Jobevent"

    assert_text "Jobevent was successfully created"
    click_on "Back"
  end

  test "should update Jobevent" do
    visit jobevent_url(@jobevent)
    click_on "Edit this jobevent", match: :first

    fill_in "Date", with: @jobevent.date
    fill_in "Description", with: @jobevent.description
    fill_in "Lat", with: @jobevent.lat
    fill_in "Lon", with: @jobevent.lon
    fill_in "Title", with: @jobevent.title
    click_on "Update Jobevent"

    assert_text "Jobevent was successfully updated"
    click_on "Back"
  end

  test "should destroy Jobevent" do
    visit jobevent_url(@jobevent)
    click_on "Destroy this jobevent", match: :first

    assert_text "Jobevent was successfully destroyed"
  end
end
