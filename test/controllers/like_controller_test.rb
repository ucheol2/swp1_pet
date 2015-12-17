require 'test_helper'

class LikeControllerTest < ActionController::TestCase
  test "should get processing" do
    get :processing
    assert_response :success
  end

end
