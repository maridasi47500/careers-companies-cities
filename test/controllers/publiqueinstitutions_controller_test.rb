require "test_helper"

class PubliqueinstitutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publiqueinstitution = publiqueinstitutions(:one)
  end

  test "should get index" do
    get publiqueinstitutions_url
    assert_response :success
  end

  test "should get new" do
    get new_publiqueinstitution_url
    assert_response :success
  end

  test "should create publiqueinstitution" do
    assert_difference("Publiqueinstitution.count") do
      post publiqueinstitutions_url, params: { publiqueinstitution: { lat: @publiqueinstitution.lat, lon: @publiqueinstitution.lon, name: @publiqueinstitution.name } }
    end

    assert_redirected_to publiqueinstitution_url(Publiqueinstitution.last)
  end

  test "should show publiqueinstitution" do
    get publiqueinstitution_url(@publiqueinstitution)
    assert_response :success
  end

  test "should get edit" do
    get edit_publiqueinstitution_url(@publiqueinstitution)
    assert_response :success
  end

  test "should update publiqueinstitution" do
    patch publiqueinstitution_url(@publiqueinstitution), params: { publiqueinstitution: { lat: @publiqueinstitution.lat, lon: @publiqueinstitution.lon, name: @publiqueinstitution.name } }
    assert_redirected_to publiqueinstitution_url(@publiqueinstitution)
  end

  test "should destroy publiqueinstitution" do
    assert_difference("Publiqueinstitution.count", -1) do
      delete publiqueinstitution_url(@publiqueinstitution)
    end

    assert_redirected_to publiqueinstitutions_url
  end
end
