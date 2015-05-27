require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert :response
  end

  test "should get candidate" do
    get :show
    assert :response
  end

end
