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
    voter = Voter.new(name: "Joe", party: "rep")
    voter.save
    patch :update, voter: {"name" => "jimmy"}
    assert_equals "jimmy", voter.name
  end

end
