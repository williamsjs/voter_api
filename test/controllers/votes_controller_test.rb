require 'test_helper'

class VotesControllerTest < ActionController::TestCase

  test "votes have index action" do
    get :index
    assert_response :success
  end
end
