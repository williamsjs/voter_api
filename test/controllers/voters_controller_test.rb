require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "voter has index" do
    get :index
    assert_response :success
  end

  test "voter has create action" do
    assert_difference("Voter.count") do
      post :create, {name: "Johnny", party: "Democrat"}
    end
    assert_equal "Johnny", Voter.last.name
  end

end
