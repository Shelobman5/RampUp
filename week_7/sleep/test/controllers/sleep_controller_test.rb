require 'test_helper'

class SleepControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
