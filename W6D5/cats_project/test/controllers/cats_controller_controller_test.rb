require 'test_helper'

class CatsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cats_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get cats_controller_show_url
    assert_response :success
  end

end
