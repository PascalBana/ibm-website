require "test_helper"

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get homepage_home_url
    assert_response :success
  end

  test "should get about_us" do
    get homepage_about_us_url
    assert_response :success
  end
end
