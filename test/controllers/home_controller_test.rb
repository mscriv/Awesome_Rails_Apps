require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get set_cookies" do
    get :set_cookies
    assert_response :success
  end

  test "should get show_cookies" do
    get :show_cookies
    assert_response :success
  end

  test "should get delete_cookies" do
    get :delete_cookies
    assert_response :success
  end

end
