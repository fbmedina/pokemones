require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  test "should get landing" do
    get :landing
    assert_response :success
  end

end
