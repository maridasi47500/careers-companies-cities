require "test_helper"

class PlateformedemploisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plateformedemploi = plateformedemplois(:one)
  end

  test "should get index" do
    get plateformedemplois_url
    assert_response :success
  end

  test "should get new" do
    get new_plateformedemploi_url
    assert_response :success
  end

  test "should create plateformedemploi" do
    assert_difference("Plateformedemploi.count") do
      post plateformedemplois_url, params: { plateformedemploi: { lat: @plateformedemploi.lat, lon: @plateformedemploi.lon, name: @plateformedemploi.name } }
    end

    assert_redirected_to plateformedemploi_url(Plateformedemploi.last)
  end

  test "should show plateformedemploi" do
    get plateformedemploi_url(@plateformedemploi)
    assert_response :success
  end

  test "should get edit" do
    get edit_plateformedemploi_url(@plateformedemploi)
    assert_response :success
  end

  test "should update plateformedemploi" do
    patch plateformedemploi_url(@plateformedemploi), params: { plateformedemploi: { lat: @plateformedemploi.lat, lon: @plateformedemploi.lon, name: @plateformedemploi.name } }
    assert_redirected_to plateformedemploi_url(@plateformedemploi)
  end

  test "should destroy plateformedemploi" do
    assert_difference("Plateformedemploi.count", -1) do
      delete plateformedemploi_url(@plateformedemploi)
    end

    assert_redirected_to plateformedemplois_url
  end
end
