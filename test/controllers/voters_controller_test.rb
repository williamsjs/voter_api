require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "voter has index" do
    get :index
    assert_response :success
  end

  test "create voter" do
    assert_difference("Voter.count") do
      post :create, {name: "Johnny", party: "Democrat"}
    end
    assert_equal "Johnny", Voter.last.name
  end

  test "voter has show" do
    get :show
    assert_response :success
  end

end
