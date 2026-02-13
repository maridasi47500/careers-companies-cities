require "test_helper"

class InterimagencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interimagence = interimagences(:one)
  end

  test "should get index" do
    get interimagences_url
    assert_response :success
  end

  test "should get new" do
    get new_interimagence_url
    assert_response :success
  end

  test "should create interimagence" do
    assert_difference("Interimagence.count") do
      post interimagences_url, params: { interimagence: { lat: @interimagence.lat, lon: @interimagence.lon, name: @interimagence.name } }
    end

    assert_redirected_to interimagence_url(Interimagence.last)
  end

  test "should show interimagence" do
    get interimagence_url(@interimagence)
    assert_response :success
  end

  test "should get edit" do
    get edit_interimagence_url(@interimagence)
    assert_response :success
  end

  test "should update interimagence" do
    patch interimagence_url(@interimagence), params: { interimagence: { lat: @interimagence.lat, lon: @interimagence.lon, name: @interimagence.name } }
    assert_redirected_to interimagence_url(@interimagence)
  end

  test "should destroy interimagence" do
    assert_difference("Interimagence.count", -1) do
      delete interimagence_url(@interimagence)
    end

    assert_redirected_to interimagences_url
  end
end
