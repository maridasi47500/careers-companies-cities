require "test_helper"

class JobeventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobevent = jobevents(:one)
  end

  test "should get index" do
    get jobevents_url
    assert_response :success
  end

  test "should get new" do
    get new_jobevent_url
    assert_response :success
  end

  test "should create jobevent" do
    assert_difference("Jobevent.count") do
      post jobevents_url, params: { jobevent: { date: @jobevent.date, description: @jobevent.description, lat: @jobevent.lat, lon: @jobevent.lon, title: @jobevent.title } }
    end

    assert_redirected_to jobevent_url(Jobevent.last)
  end

  test "should show jobevent" do
    get jobevent_url(@jobevent)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobevent_url(@jobevent)
    assert_response :success
  end

  test "should update jobevent" do
    patch jobevent_url(@jobevent), params: { jobevent: { date: @jobevent.date, description: @jobevent.description, lat: @jobevent.lat, lon: @jobevent.lon, title: @jobevent.title } }
    assert_redirected_to jobevent_url(@jobevent)
  end

  test "should destroy jobevent" do
    assert_difference("Jobevent.count", -1) do
      delete jobevent_url(@jobevent)
    end

    assert_redirected_to jobevents_url
  end
end
