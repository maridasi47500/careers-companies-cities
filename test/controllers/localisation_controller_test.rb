require "test_helper"

class LocalisationControllerTest < ActionDispatch::IntegrationTest
  test "should get monadresse" do
    get localisation_monadresse_url
    assert_response :success
  end
end
