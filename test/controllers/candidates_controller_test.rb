require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert :response
  end
  
end
