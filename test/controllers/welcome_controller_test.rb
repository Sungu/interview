require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get first_page" do
    get :first_page
    assert_response :success
  end

end
