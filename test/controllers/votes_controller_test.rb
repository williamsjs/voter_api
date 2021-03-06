require 'test_helper'

class VotesControllerTest < ActionController::TestCase

  test "votes have index action" do
    get :index
    assert_response :success
  end

  test "votes have create action" do
    assert_difference('Vote.count') do
      post :create, {voter_id: 3, candidate_id: 3}
    end
    assert_equal 3, Vote.last.voter_id
  end

end
