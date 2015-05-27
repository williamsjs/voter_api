require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "voter has index" do
    get :index
    assert_response :success
  end
end
