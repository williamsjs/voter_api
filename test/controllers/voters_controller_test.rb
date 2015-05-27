require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "voter has index action" do
    get :index
    assert_response :success
  end

  test "voter has create action" do
    assert_difference("Voter.count") do
      post :create, {name: "Johnny", party: "Democrat"}
    end
    assert_equal "Johnny", Voter.last.name
  end

  test "voter has update action" do
    voter = Voter.create(name: "Joe", party: "rep")
    voter_before_updated_name = voter.name
    patch :update, {name: "William"}
    assert_not_equal voter.name, voter_before_updated_name
  end

end
